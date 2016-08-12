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
                #region 通用
                case "kindeditor":
                    HttpPostedFile file = req.Files[0];
                    res.Write(Utils.UploadImage(file, req.QueryString["type"], context));
                    break;
                #endregion
                #region 首页设置
                #region 设置
                case "sethomesaibandao":
                    string title = req.Params["saibandao_title"];
                    string content = req.Params["saibandao_content"];
                    context.Response.Write(Utils.GetReulst(200, "设置成功！", "设置失败！", com.home.sanbandao.setHomeSaibandao(title, content)));
                    break;
                case "setagriculture": //农业
                    title = req.Params["agriculture_title"];
                    content = req.Params["agriculture_content"];
                    context.Response.Write(Utils.GetReulst(200, "设置成功！", "设置失败！", com.home.sanbandao.setHomeAgriculture(title, content)));
                    break;
                case "setestate": //地产
                    title = req.Params["estate_title"];
                    content = req.Params["estate_content"];
                    context.Response.Write(Utils.GetReulst(200, "设置成功！", "设置失败！", com.home.sanbandao.setHomeEstate(title, content)));
                    break;
                case "setimmigrant": //移民
                    title = req.Params["immigrant_title"];
                    content = req.Params["immigrant_content"];
                    context.Response.Write(Utils.GetReulst(200, "设置成功！", "设置失败！", com.home.sanbandao.setHomeImmigrant(title, content)));
                    break;
                case "settourism": //旅游
                    title = req.Params["tourism_title"];
                    content = req.Params["tourism_content"];
                    context.Response.Write(Utils.GetReulst(200, "设置成功！", "设置失败！", com.home.sanbandao.setHomeTourism(title, content)));
                    break;
                #endregion
                #region 获取
                case "gethomesaibandao":
                    context.Response.Write(Utils.DataTableToJSON( com.home.sanbandao.getHomeSaibandao()));
                    break;
                case "getagriculture": //农业
                    context.Response.Write( Utils.DataTableToJSON(com.home.sanbandao.getHomeAgriculture()));
                    break;
                case "getestate": //地产
                    context.Response.Write(Utils.DataTableToJSON(com.home.sanbandao.getHomeEstate()));
                    break;
                case "getimmigrant": //移民
                    context.Response.Write(Utils.DataTableToJSON(com.home.sanbandao.getHomeImmigrant()));
                    break;
                case "gettourism": //旅游
                    context.Response.Write(Utils.DataTableToJSON(com.home.sanbandao.getHomeTourism( )));
                    break;
                    #endregion
                    #endregion
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