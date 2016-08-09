using SqlOper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Donghui.com
{
    public class @case
    {
        public static DataTable getCaseList(string currentIndex,string pageCount)
        {
            string strSql = string.Format(@" select top {0} * from (
                                 select ROW_NUMBER() OVER(order by id desc) rowIndex , id, type, name, title, subtitle, photo, content, created, deleted from News
                                where deleted=0 and type='case'
                                )t where rowIndex > {0} * ({1}-1)", pageCount, currentIndex);

            SqlOper.SQLServerOperating s = new SqlOper.SQLServerOperating();
           return s.Selects(strSql);
        }
        public static string getCaseListCount()
        {
            string strSql = "select COUNT(*) from News where type='case' and deleted=0";
            SqlOper.SQLServerOperating s = new SqlOper.SQLServerOperating();
            return s.Select(strSql);
        }

        public static int addCase(string title,string subtitle,string photo,string content)
        {
            string strSql = string.Format(@"INSERT INTO [News] ([type],[name],[subtitle],[content],created,photo,deleted)
                                            VALUES (@type,@name,@subtitle,@content,getdate(),@photo,0)");
            SqlParameter[] sp = new SqlParameter[] {
                new SqlParameter ("type","case"),new SqlParameter ("name",title),new SqlParameter ("subtitle",subtitle),
                new SqlParameter ("content",content),   new SqlParameter ("photo",photo)
            };
            SqlOper.SQLServerOperating s = new SqlOper.SQLServerOperating();
            return s.ExecuteSql(strSql,sp);
        }

        public static int deleteCaseById(string id)
        {
            string strSql = "update News set deleted = 1 where id=" + id;
            SQLServerOperating s = new SQLServerOperating();
            return s.ExecuteSql(strSql);
        }

        public static int updateCase(string id, string title,string subtitle, string photo, string content)
        {
            string sql = "update News Set name=@name,subtitle=@subtitle,photo=@photo,content=@content where id=@id";
            SqlParameter[] sp = new SqlParameter[] {
                new SqlParameter ("name",title),new SqlParameter ("id",id),new SqlParameter ("subtitle",subtitle),
                new SqlParameter ("content",content),   new SqlParameter ("photo",photo)
            };
            SQLServerOperating s = new SQLServerOperating();
            return s.ExecuteSql(sql, sp);
        }

        public static DataTable getCaseDetailById(string id)
        {
            string strSql = "select id,name, subtitle, photo, content, created, deleted from News where [type]='case' and id = " + id;
            SQLServerOperating s = new SQLServerOperating();
            return s.Selects(strSql);
        }

        public static DataTable getCaseList()
        {
            string strSql = "select id,   name, subtitle, photo, content, created, deleted from News where [type]='case' and deleted=0 ";
            SQLServerOperating s = new SQLServerOperating();
           return s.Selects(strSql);
        }

        public static DataTable getCaseListTop3()
        {
            string strSql = "select top 6 id, type, name, title, subtitle, photo, content, created, deleted from News where type='case' and deleted=0 order by created desc";
            SQLServerOperating s = new SQLServerOperating();
            return s.Selects(strSql);
        }

    }
}