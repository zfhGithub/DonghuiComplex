using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DonghuiComplex.dc_337
{
    public partial class index : System.Web.UI.Page
    {
        public List<string> phoneList = new List<string>();
        public Dictionary<string, string> qqList = new Dictionary<string, string>();
        public DataTable servicesList = new DataTable();
        public DataTable propertyList = new DataTable();
        public DataTable myteamList = new DataTable();
        public DataTable bannerList = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            qqList = com.settings.getQQs();
            phoneList = com.settings.getPhones();
            servicesList = com.dc.services.getServicesList("1","6");
            propertyList = com.dc.property.getPropertyList("1","9");
            myteamList = com.dc.myteam.getMyteamList("1","4");
            bannerList = com.dc.banner.getBannerList("1","7");
            if (Request.HttpMethod == "POST")
            {
                string name = Request.Form["name"];
                string phone = Request.Form["phone"];
                string email = Request.Form["email"];
                string message = Request.Form["message"];
                int s = com.home.message.addMessage(name, email, phone, message, "dichan");
                if (s > 0)
                {
                    Response.Write("<script>alert('我们已经收到你的留言！');</script>");
                }
            }
        }
    }
}