using SqlOper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Donghui.com
{
    public class aboutinfo
    {
        public static int setAboutInfo(string aboutText = null, string achievementText = null, string teamText = null)
        {

            string strSql = " update Company set ";
            if (aboutText != null)
            {
                // [AboutusText]=@AboutusText,[AchievementText]=@AchievementText ,[MyTeamText]= @MyTeamText 
                strSql += " [AboutusText]=@AboutusText ";
            }
            if (achievementText != null)
            {
                strSql += " [AchievementText]=@AchievementText ";
            }
            if (teamText != null)
            {
                strSql += " [MyTeamText]=@MyTeamText ";
            }
            SqlParameter[] sp = new SqlParameter[] {
                new SqlParameter("AboutusText",aboutText??""),new SqlParameter("AchievementText",achievementText??""),new SqlParameter("MyTeamText",teamText??"")
            };
            SqlOper.SQLServerOperating sql = new SqlOper.SQLServerOperating();
            return sql.ExecuteSql(strSql, sp);
        }
        public static DataTable getAboutInfo()
        {
            string strSql = "SELECT Id, CompanyName, Address,  Email, Phone, Contacts, Introduce, AboutusText, AchievementText, MyTeamText FROM [Donghui].[dbo].[Company]";
            SqlOper.SQLServerOperating s = new SqlOper.SQLServerOperating();
            return s.Selects(strSql);
        }

        public static int setContact(string name, string address, string email, string phone)
        {
            string strSql = " update  Company set CompanyName='" + name + "',Phone='" + phone + "',email='" + email + "',address='" + address + "' ";
            SqlOper.SQLServerOperating s = new SqlOper.SQLServerOperating();
            return s.ExecuteSql(strSql);
        }

        public static Dictionary<string, string> getAboutUsInfo()
        {
            string strSql = "select Id, CompanyName, Address, Email, Phone, Contacts, Introduce, AboutusText, AchievementText, MyTeamText, BannerImages, LogoImage from Company";
            SQLServerOperating s = new SQLServerOperating();
            DataTable dt = s.Selects(strSql);
            Dictionary<string, string> dic = new Dictionary<string, string>();
            foreach (DataColumn dc in dt.Columns)
            {
                foreach (DataRow row in dt.Rows)
                {
                    dic[dc.ColumnName] = row[dc.ColumnName].ToString();
                }
            }
            return dic;
        }
        /// <summary>
        /// 获取最新的10条新闻
        /// </summary>
        /// <returns></returns>
        public static List<Dictionary<string, string>> getNewsList()
        {
            string strSql = "select top 10 id, type, name, title, subtitle, photo, content, created, deleted  from News where deleted=0 order by created desc";
            SQLServerOperating s = new SQLServerOperating();
            DataTable dt = s.Selects(strSql);
            List<Dictionary<string, string>> list = new List<Dictionary<string, string>>(); 
            foreach (DataRow row in dt.Rows)
            {
                Dictionary<string, string> dic = new Dictionary<string, string>();
                foreach (DataColumn dc in dt.Columns)
                {
                    dic[dc.ColumnName] = row[dc.ColumnName].ToString();
                }
                list.Add(dic);
            }
            return list;
        }
    }
}