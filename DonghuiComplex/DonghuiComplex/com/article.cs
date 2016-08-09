using SqlOper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Donghui.com
{
    public class article
    {
        public static DataTable getArticleList(string currentIndex, string pageCount)
        {
            string strSql = string.Format(@" select top {0} * from (
                                 select ROW_NUMBER() OVER(order by id desc) rowIndex , id, type, name, title, subtitle, photo, content, created, deleted from News
                                where deleted=0 and type='article'
                                )t where rowIndex > {0} * ({1}-1)", pageCount, currentIndex); ;
            SqlOper.SQLServerOperating s = new SqlOper.SQLServerOperating();
            return s.Selects(strSql);
        }

        public static string getArticleListCount()
        {
            string strSql = "select COUNT(*) from News where type='article' and deleted=0";
            SqlOper.SQLServerOperating s = new SqlOper.SQLServerOperating();
            return s.Select(strSql);
        }

        public static int addArticle(string title,string subtitle, string photo, string content)
        {
            string strSql = string.Format(@"INSERT INTO [News] ([type],[title],[subtitle],[content],created,photo,name,deleted)
                                            VALUES (@type,@title,@subtitle,@content,getdate(),@photo,@name,0)");
            SqlParameter[] sp = new SqlParameter[] {
                new SqlParameter ("type","article"),new SqlParameter ("title",title),new SqlParameter ("name",title),
                new SqlParameter ("content",content),   new SqlParameter ("photo",photo),   new SqlParameter ("subtitle",subtitle)
            };
            SqlOper.SQLServerOperating s = new SqlOper.SQLServerOperating();
            return s.ExecuteSql(strSql,sp);
        }

        public static int deleteArticleById(string id)
        {
            string strSql = "update News set deleted = 1 where id=" + id;
            SQLServerOperating s = new SQLServerOperating();
            return s.ExecuteSql(strSql);
        }

        public static int updateArticle(string id, string title, string subtitle,string photo, string content)
        {
            string sql = "update News Set name=@name, title=@title,subtitle=@subtitle,photo=@photo,content=@content where id=@id";
            SqlParameter[] sp = new SqlParameter[] {
                new SqlParameter ("title",title),new SqlParameter ("id",id), new SqlParameter ("name",title),
                new SqlParameter ("content",content),   new SqlParameter ("photo",photo), new SqlParameter ("subtitle",subtitle)
            };
            SQLServerOperating s = new SQLServerOperating();
            return s.ExecuteSql(sql, sp);
        }

        public static DataTable getArticleDetailById(string id)
        {
            string strSql = string.Format("select id, type, name, title, subtitle, photo, content, created, deleted from News where id={0} and type='Article' and deleted=0", id);
            SQLServerOperating s = new SQLServerOperating();
            return s.Selects(strSql);
        }

    }
}