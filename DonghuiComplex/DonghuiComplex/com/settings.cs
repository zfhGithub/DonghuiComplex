using SqlOper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace DonghuiComplex.com
{
    public class settings
    {
        public static int addServices(string qq, string name)
        {
            if (string.IsNullOrEmpty(qq) || string.IsNullOrEmpty(name))
            {
                return -1;
            }
            SQLServerOperating s = new SQLServerOperating();
            string qqs = s.Select("select CustomerServiceQQ from Company");
            if (qqs.Trim().Equals(string.Empty))
            {
                qqs = qq + "/" + name;
            }
            else
            {
                qqs = qqs + ";" + qq + "/" + name;
            }

            return s.ExecuteSql(" update Company set CustomerServiceQQ='" + qqs + "'");
        }
        public static string[] getServices()
        {
            SQLServerOperating s = new SQLServerOperating();
            string qqs = s.Select("select CustomerServiceQQ from Company");

            return qqs.Split(';');
        }
        public static string[] getServicesPhones()
        {
            SQLServerOperating s = new SQLServerOperating();
            string qqs = s.Select("select CustomerServicePhone from Company");
            return qqs.Split(';');
        }


        public static Dictionary<string, string> getQQs()
        {
            SQLServerOperating s = new SQLServerOperating();
            string qqs = s.Select("select CustomerServiceQQ from Company");
            string[] str = qqs.Split(';');
            Dictionary<string, string> dic = new Dictionary<string, string>();
            for (int i = 0; i < str.Length; i++)
            {
                string[] o = str[i].Split('/');
                dic[o[0] + "-" + i] = o[1];
            }
            return dic;
        }
        public static List<string> getPhones()
        {
            SQLServerOperating s = new SQLServerOperating();
            string qqs = s.Select("select CustomerServicePhone from Company");
            string[] str = qqs.Split(';');
            List<string> list = new List<string>();
            for (int i = 0; i < str.Length; i++)
            {
                list.Add(str[i]);
            }
            return list;
        }

        public static int deleteQQ(string qq, string name)
        {
            SQLServerOperating s = new SQLServerOperating();
            string qqs = s.Select("select CustomerServiceQQ from Company");
            qqs = qqs.Replace(qq + "/" + name + ";", "").Replace(";" + qq + "/" + name, "").Replace(qq + "/" + name, "");
            return s.ExecuteSql(" update Company set CustomerServiceQQ='" + qqs.Trim() + "'");
        }
        public static int deletePhone(string Phone)
        {
            SQLServerOperating s = new SQLServerOperating();
            string CustomerServicePhone = s.Select("select CustomerServicePhone from Company");
            CustomerServicePhone = CustomerServicePhone.Replace(Phone + ";", "").Replace(";" + Phone, "").Replace(Phone, "");
            return s.ExecuteSql(" update Company set CustomerServicePhone='" + CustomerServicePhone.Trim() + "'");
        }

        public static int addServicesPhone(string phone)
        {
            if (string.IsNullOrEmpty(phone))
            {
                return -1;
            }
            SQLServerOperating s = new SQLServerOperating();
            string CustomerServicePhone = s.Select("select CustomerServicePhone from Company");
            if (CustomerServicePhone.Trim().Equals(string.Empty))
            {
                CustomerServicePhone = phone;
            }
            else
            {
                CustomerServicePhone = CustomerServicePhone + ";" + phone;
            }

            return s.ExecuteSql(" update Company set CustomerServicePhone='" + CustomerServicePhone + "'");
        }
        public static int updatePassword(string newpwd, string olepwd)
        { 
            string sql = "update Users set PassWord='" + newpwd + "' where id=1 and password='" + olepwd + "'";
            SQLServerOperating s = new SQLServerOperating();
            return s.ExecuteSql(sql);
        }
    }
}