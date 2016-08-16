using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace DonghuiComplex.com.ly
{
    public class aboutinfo
    {
        public static int setAboutInfo(string title, string content)
        {

            string strSql = " update News set ";
            strSql += " [content]=@content,title=@title where type='ly_aboutus' ";

            SqlParameter[] sp = new SqlParameter[] {
                new SqlParameter("content",content??""),new SqlParameter("title",title??"")
            };
            SqlOper.SQLServerOperating sql = new SqlOper.SQLServerOperating();
            return sql.ExecuteSql(strSql, sp);
        } 

        public static DataTable getAboutInfo()
        {
            string strSql = "select * from News where type='ly_aboutus'";
            SqlOper.SQLServerOperating s = new SqlOper.SQLServerOperating(); 
            return s.Selects(strSql);
        }

    }
}