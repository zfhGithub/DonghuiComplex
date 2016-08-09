using SqlOper;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
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
                try
                {
                    string strSql = string.Format("select id, LoginName, UserName, PassWord, Phone, Email, Remarks from Users where LoginName='{0}' and password = '{1}';", name, pwd);

                    SqlOper.SQLServerOperating sqlHelper = new SqlOper.SQLServerOperating();
                    DataTable dt = sqlHelper.Selects(strSql);
                    if (dt.Rows.Count > 0)
                    {
                        DataRow row = dt.Rows[0];
                        Models.Users users = new Models.Users()
                        {
                            Id = row["id"].ToString(),
                            LoginName = row["LoginName"].ToString(),
                            UserName = row["UserName"].ToString(),
                            Phone = row["Phone"].ToString(),
                            EMail = row["Email"].ToString()
                        };

                        Session["UserInfo"] = users;
                        Response.Redirect("index.aspx");
                    }
                    else
                    {
                        txtErrorMsg.Visible = true;
                        txtErrorMsg.Text = "账号密码错误！";
                    }
                }
                catch
                {
                    txtErrorMsg.Visible = true;
                    txtErrorMsg.Text = "登录异常！！";
                }


            }
        }
}