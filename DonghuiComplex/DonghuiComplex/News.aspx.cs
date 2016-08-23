using SqlOper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DonghuiComplex
{
    public partial class News : System.Web.UI.Page
    {
        public Dictionary<string, string> newDetail = new Dictionary<string, string>();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string id = Request.QueryString["id"];
                SQLServerOperating s = new SQLServerOperating();
                string strSql = "select id, type, title, subtitle, photo, content, created, deleted from News where id=" + id + " and deleted =0";
                DataTable dt = s.Selects(strSql);
                foreach (DataRow row in dt.Rows)
                {
                    foreach (DataColumn col in dt.Columns)
                    {
                        newDetail[col.ColumnName] = row[col.ColumnName].ToStringEmpty();
                    }
                }
            }
            catch (Exception)
            {
                Response.Redirect("index.aspx");
            }
         
        }
    }
}