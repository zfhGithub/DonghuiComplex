using SqlOper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace DonghuiComplex.com.dc
{
    public class services
    {
        public static int addServices(string title, string subtitle, string photo, string content)
        {
            string strSql = string.Format(@"INSERT INTO [News] ([type],[subtitle],[content],created,photo,title,deleted)
                                            VALUES (@type,@subtitle,@content,getdate(),@photo,@title,0)");
            SqlParameter[] sp = new SqlParameter[] {
                new SqlParameter ("type","dc_services"),new SqlParameter ("title",title),
                new SqlParameter ("content",content),new SqlParameter ("subtitle",subtitle),
                new SqlParameter ("photo",photo)
            };
            SqlOper.SQLServerOperating s = new SqlOper.SQLServerOperating();
            return s.ExecuteSql(strSql, sp);
        }
        public static DataTable getServicesList(string currentIndex, string pageCount)
        {
            string strSql = string.Format(@" select top {0} * from (
                                 select ROW_NUMBER() OVER(order by id desc) rowIndex , id, type,  title, subtitle, photo, content, created, deleted from News
                                where deleted=0 and type='dc_services'
                                )t where rowIndex > {0} * ({1}-1)", pageCount, currentIndex);
            SQLServerOperating s = new SQLServerOperating();
            return s.Selects(strSql);
        }
        public static int updateServices(string id, string title, string subtitle, string photo, string content)
        {
            string strSql = string.Format(@"update News set subtitle=@subtitle,title=@title,photo=@photo,content=@content where id=@id and type='dc_services'");
            SqlParameter[] sp = new SqlParameter[] {
                new SqlParameter ("id",id),new SqlParameter ("title",title),
                new SqlParameter ("content",content),new SqlParameter ("subtitle",subtitle),
                new SqlParameter ("photo",photo)
            };
            SqlOper.SQLServerOperating s = new SqlOper.SQLServerOperating();
            return s.ExecuteSql(strSql, sp);
        }
        public static string getServicesCount()
        {
            string strSql = " select COUNT(*) from News where  deleted=0 and type='dc_services'";
            SQLServerOperating s = new SQLServerOperating();
            return s.Select(strSql);
        }

        public static int deleteServicesById(string id)
        {
            string strSql = "update News set deleted = 1 where id=" + id;
            SQLServerOperating s = new SQLServerOperating();
            return s.ExecuteSql(strSql);
        }
        public static DataTable getServicesDetailById(string id)
        {
            string strSql = "select id, type, title, subtitle, photo, content, created, deleted from News where type = 'dc_services' and deleted = 0 and id=" + id;
            SQLServerOperating s = new SQLServerOperating();
            return s.Selects(strSql);
        }
    }
}