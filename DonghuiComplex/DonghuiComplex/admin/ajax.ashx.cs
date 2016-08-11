using SqlOper;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;

namespace DonghuiComplex.admin
{
    /// <summary>
    /// ajax 的摘要说明
    /// </summary>
    public class ajax : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string action = context.Request.Params["action"];
            HttpRequest req = context.Request;
            HttpResponse res = context.Response;
             
            switch (action)
            {
                case "sethomesaibandao":
                    string title = req.Params["title"];
                    string content = req.Params["content"];
                    context.Response.Write(Utils.GetReulst(200,"设置成功！","设置失败！",com.home.sanbandao.setHomeSaibandao(title,content)));
                    break;
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}