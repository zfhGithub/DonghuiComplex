﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DonghuiComplex.ly_300
{
    public partial class index : System.Web.UI.Page
    {
        public List<string> phoneList = new List<string>();
        public Dictionary<string, string> qqList = new Dictionary<string, string>();
        protected void Page_Load(object sender, EventArgs e)
        {
            qqList = com.settings.getQQs();
            phoneList = com.settings.getPhones();

        }
    }
}