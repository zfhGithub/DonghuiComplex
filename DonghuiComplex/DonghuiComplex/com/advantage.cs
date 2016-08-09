using SqlOper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Donghui.com
{
    public class advantage
    {
       
        public static int addAdvantage(string name, string subtitle, string photo,string content)
        {
            string strSql = string .Format(@"INSERT INTO [News] ([type],[subtitle],[content],created,photo,name,deleted)
                                            VALUES (@type,@subtitle,@content,getdate(),@photo,@name,0)");
            SqlParameter[] sp = new SqlParameter[] {
                new SqlParameter ("type","advantage"),new SqlParameter ("name",name),
                new SqlParameter ("content",content),new SqlParameter ("subtitle",subtitle),
                new SqlParameter ("photo",photo)
            };
            SqlOper.SQLServerOperating s = new SqlOper.SQLServerOperating();
            return  s.ExecuteSql(strSql,sp);
        }
        public static int updateAdvantage(string id, string name, string subtitle, string photo, string content)
        {
            string strSql = string.Format(@"update News set subtitle=@subtitle,name=@name,photo=@photo,content=@content where id=@id and type='advantage'");
            SqlParameter[] sp = new SqlParameter[] {
                new SqlParameter ("id",id),new SqlParameter ("name",name),
                new SqlParameter ("content",content),new SqlParameter ("subtitle",subtitle),
                new SqlParameter ("photo",photo)
            };
            SqlOper.SQLServerOperating s = new SqlOper.SQLServerOperating();
            return s.ExecuteSql(strSql, sp);
        }

        public static DataTable getAdvantageList(string currentIndex, string pageCount)
        {
            string strSql = string.Format(@" select top {0} * from (
                                 select ROW_NUMBER() OVER(order by id desc) rowIndex , id, type, name, title, subtitle, photo, content, created, deleted from News
                                where deleted=0 and type='advantage'
                                )t where rowIndex > {0} * ({1}-1)", pageCount, currentIndex);
            SqlOper.SQLServerOperating s = new SQLServerOperating();
            return s.Selects(strSql);
        }

        public static string getAdvantageCount()
        {
            string strSql = " select COUNT(*) from News where  deleted=0 and type='advantage'";
            SQLServerOperating s = new SQLServerOperating();
            return s.Select(strSql);
        }
        /// <summary>
        /// 设置我们的承诺
        /// </summary>
        /// <param name="content">html内容</param>
        /// <returns></returns>
        public static int setMyCommit(string title =null, string content=null)
        {
            string strSql = "select COUNT(0) from News  where type='mycommit'";
            SqlOper.SQLServerOperating s = new SqlOper.SQLServerOperating();
            if ( Convert.ToInt32( s.Select(strSql)) > 0)
            {
                strSql = string.Format(@"UPDATE [News] SET ");
                if (title != null)
                {
                    strSql += "[title] = @title ,";
                }
                if (content != null)
                {
                    strSql += "[content] = @content ,"; 
                }
                strSql = strSql.Substring(0, strSql.Length - 1);
               strSql += " WHERE type = 'mycommit'";
            }
            else
            {
                strSql = string.Format(@"INSERT INTO [News] ([type],[title],[content],[subtitle],[created],deleted) VALUES (@type,@title,@content,@subtitle,getdate(),0)");
            }
            
                                         
            SqlParameter[] sp = new SqlParameter[] {
                new SqlParameter ("type","mycommit"),new SqlParameter ("title",title??""),
                new SqlParameter ("content",content??""),new SqlParameter ("subtitle","")
            };
         
            return s.ExecuteSql(strSql, sp);
        }

        public static DataTable getMyCommit()
        {
            string strSql = "select id, type, title, content, subtitle  from News where type='mycommit' and deleted=0";
            SQLServerOperating s = new SQLServerOperating();
            return s.Selects(strSql);
        }

        public static int deleteAdvantageById(string id)
        {
            string strSql = "update News set deleted = 1 where id=" +id;
            SQLServerOperating s = new SQLServerOperating();
            return s.ExecuteSql(strSql);
        }
        public static DataTable getAdvantageDetailById(string id)
        {
            string strSql = "select id, type, name, title, subtitle, photo, content, created, deleted from News where type = 'advantage' and deleted = 0 and id="+id;
            SQLServerOperating s = new SQLServerOperating();
            return s.Selects(strSql);
        }
    }
}