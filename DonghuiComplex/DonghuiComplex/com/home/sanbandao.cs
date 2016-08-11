using SqlOper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DonghuiComplex.com.home
{
    public class sanbandao
    {
        public static int setHomeSaibandao(string title,string content)
        {
            string sql = string.Format( "update News set title='{0}' ,content='{1}' where type='HomeSaibandao' ",title, content);
            SQLServerOperating s = new SQLServerOperating();
            return s.ExecuteSql(sql);
        }
    }
}