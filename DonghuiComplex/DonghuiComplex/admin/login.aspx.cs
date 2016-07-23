using SqlOper; 
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DonghuiComplex.admin
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.HttpMethod.ToLower() == "post")
            {
                if (!string.IsNullOrWhiteSpace(Request.QueryString["action"]) && Request.QueryString["action"] == "logout")
                {
                    Session["UserInfo"] = null;
                }
                string name = Request.Form["username"];
                string pwd = Request.Form["passwordmd5"];

                string strSql =string.Format("select * from users where username='{0}' and password = '{1}';",name,pwd);
                SqlOper.SQLServerOperating sqlHelper = new SqlOper.SQLServerOperating();
                if (name.Trim() =="admin" && pwd=="123456")
                {
                    Session["UserInfo"] = "login";
                    Response.Redirect("index.aspx");
                }
                else
                {
                    txtErrorMsg.Visible = true;
                    txtErrorMsg.Text = "账号密码错误！";
                }
            }
        }
    }
}