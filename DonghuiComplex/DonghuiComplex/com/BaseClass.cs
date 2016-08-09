using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DonghuiComplex.com
{
    public class BaseClass : System.Web.UI.Page
    {
        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);

            if (Session["UserInfo"] == null)
            {
                Response.Redirect("/admin/login.aspx");
            }
        }
        private static string language;

        public static string Language
        {
            get
            {
                return language;
            }

            set
            {
                language = value;
            }
        }
    }
}