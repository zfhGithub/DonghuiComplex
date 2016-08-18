using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DonghuiComplex.ny_118
{
    public partial class index : System.Web.UI.Page
    {
        public List<string> phoneList = new List<string>();
        public Dictionary<string, string> qqList = new Dictionary<string, string>();
        public DataTable productsList = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            qqList = com.settings.getQQs();
            phoneList = com.settings.getPhones();
            productsList = com.ny.products.getProductsList("1", "6");

            if (Request.HttpMethod == "POST")
            {
                string name = Request.Form["name"];
                string phone = Request.Form["phone"];
                string email = Request.Form["email"];
                string message = Request.Form["message"];
                int s = com.home.message.addMessage(name, email, phone, message, "nongye");
                if (s > 0)
                {
                    Response.Write("<script>alert('我们已经收到你的留言！');</script>");
                }
            }
        }
    }
}