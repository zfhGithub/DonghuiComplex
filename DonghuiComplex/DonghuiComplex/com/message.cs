using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Donghui.com
{
    public class message
    {
        public static int addMessage(string name,string email,string phone,string message)
        {
            string strSql = " insert into Message values('"+name+"','"+ message + "',getdate(),'"+phone+"','"+email+"')";
            SqlOper.SQLServerOperating s = new SqlOper.SQLServerOperating();
            return s.ExecuteSql(strSql);
        }

        public static DataTable getMessageList(string currentIndex, string pageCount)
        {
            string strSql = string.Format(@"SELECT TOP {0} * 
                            FROM(
                                    SELECT ROW_NUMBER() OVER(ORDER BY id desc) AS rowIndex, Id, Name, MsgContent, CreateTime, Phone, Email FROM Message
                                    ) m
                            WHERE rowIndex >  {0} * ( {1} - 1) order by id desc", pageCount, currentIndex);
            SqlOper.SQLServerOperating s = new SqlOper.SQLServerOperating();
            return s.Selects(strSql);
        }

        public static string getMessageListCount()
        {
            string strSql = "SELECT COUNT(*) FROM Message";
            SqlOper.SQLServerOperating s = new SqlOper.SQLServerOperating();
            return s.Select(strSql);
        }
    }
}