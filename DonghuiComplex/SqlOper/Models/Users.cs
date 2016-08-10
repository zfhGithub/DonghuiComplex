using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DonghuiComplex.Models
{
    public class Users
    {
        private string id;
        private string loginName;
        private string userName;
        private string passWord;
        private string phone;
        private string eMail;
        public string Id
        {
            get
            {
                return id;
            }

            set
            {
                id = value;
            }
        }

        public string LoginName
        {
            get
            {
                return loginName;
            }

            set
            {
                loginName = value;
            }
        }

        public string UserName
        {
            get
            {
                return userName;
            }

            set
            {
                userName = value;
            }
        }

        public string PassWord
        {
            get
            {
                return passWord;
            }

            set
            {
                passWord = value;
            }
        }

        public string Phone
        {
            get
            {
                return phone;
            }

            set
            {
                phone = value;
            }
        }

        public string EMail
        {
            get
            {
                return eMail;
            }

            set
            {
                eMail = value;
            }
        }
    }
}