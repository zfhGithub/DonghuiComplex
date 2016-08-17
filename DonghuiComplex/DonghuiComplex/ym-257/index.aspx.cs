using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DonghuiComplex.ym_257
{
    public partial class index : System.Web.UI.Page
    {
        public List<string> phoneList = new List<string>();
        public Dictionary<string, string> qqList = new Dictionary<string, string>();

        public DataTable aboutusList = new DataTable();
        public DataTable myteamList = new DataTable();
        public DataTable servicesList = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            qqList = com.settings.getQQs();
            phoneList = com.settings.getPhones();
            myteamList = com.ym.myteam.getMyteamList("1", "8");
            aboutusList = com.ym.aboutus.getAboutusList("1", "10");
            servicesList = com.ym.services.getServicesList("1","5");

            if (Request.HttpMethod == "POST")
            {
                string name = Request.Form["name"];
                string phone = Request.Form["phone"];
                string email = Request.Form["email"];
                string message = Request.Form["message"];
                int s = com.home.message.addMessage(name, email, phone, message, "yimin");
                if (s > 0)
                {
                    Response.Write("<script>alert('我们已经收到你的留言！');</script>");
                }
            }

        }
    }
}