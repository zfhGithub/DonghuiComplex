using SqlOper;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;

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
                #region 留言管理 
                case "messagelist":
                    string currentIndex = req.Form["pageIndex"];
                    string pageCount = req.Form["pageSize"];
                    Dictionary<string, string> jsonDic = new Dictionary<string, string>();
                    jsonDic.Add("data", Utils.DataTableToJSON(com.message.getMessageList(currentIndex, pageCount)));
                    jsonDic.Add("count", com.message.getMessageListCount());
                    JavaScriptSerializer js = new JavaScriptSerializer();
                    res.Write(js.Serialize(jsonDic));
                    break;
                #endregion

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
                    context.Response.Write(Utils.DataTableToJSON(com.home.sanbandao.getHomeSaibandao()));
                    break;
                case "getagriculture": //农业
                    context.Response.Write(Utils.DataTableToJSON(com.home.sanbandao.getHomeAgriculture()));
                    break;
                case "getestate": //地产
                    context.Response.Write(Utils.DataTableToJSON(com.home.sanbandao.getHomeEstate()));
                    break;
                case "getimmigrant": //移民
                    context.Response.Write(Utils.DataTableToJSON(com.home.sanbandao.getHomeImmigrant()));
                    break;
                case "gettourism": //旅游
                    context.Response.Write(Utils.DataTableToJSON(com.home.sanbandao.getHomeTourism()));
                    break;
                #endregion
                #endregion

                #region 移民板块
                #region 团队
                case "addymteam":
                    int status = com.ym.myteam.addTeam(req.Form["ym_team_title"], req.Form["ym_team_subtitle"], req.Form["ym_team_photo"], req.Form["ym_team_content"]);
                    string reulst = Utils.GetReulst(200, "添加成功！", "添加失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "updatemyteam":
                    status = com.ym.myteam.updateTeam(req.Params["id"], req.Form["ym_team_title"], req.Form["ym_team_subtitle"], req.Form["ym_team_photo"], req.Form["ym_team_content"]);
                    reulst = Utils.GetReulst(200, "修改成功！", "修改失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "ymteamlist":
                    currentIndex = req.Form["pageIndex"];
                    pageCount = req.Form["pageSize"];
                    jsonDic = new Dictionary<string, string>();
                    jsonDic.Add("data", Utils.DataTableToJSON(com.ym.myteam.getMyteamList(currentIndex, pageCount)));
                    jsonDic.Add("count", com.ym.myteam.getMyteamCount());
                    js = new JavaScriptSerializer();
                    res.Write(js.Serialize(jsonDic));
                    break;
                case "deleteymteam":
                    string id = req.QueryString["id"];
                    res.Write(Utils.GetReulst(200, "删除成功！", "删除失败！", com.ym.myteam.deleteMyteamById(id)));
                    break;
                case "getymteamdetailbyid":
                    id = req.Params["id"];
                    res.Write(Utils.DataTableToJSON(com.ym.myteam.getMyteamDetailById(id)));
                    break;
                #endregion

                #region 关于我们
                case "addymaboutus":
                    status = com.ym.aboutus.addAboutus(req.Form["ym_aboutus_title"], req.Form["ym_aboutus_subtitle"], req.Form["ym_aboutus_photo"], req.Form["ym_aboutus_content"]);
                    reulst = Utils.GetReulst(200, "添加成功！", "添加失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "updateaboutus":
                    status = com.ym.aboutus.updateAboutus(req.Params["id"], req.Form["ym_aboutus_title"], req.Form["ym_aboutus_subtitle"], req.Form["ym_aboutus_photo"], req.Form["ym_aboutus_content"]);
                    reulst = Utils.GetReulst(200, "修改成功！", "修改失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "ymaboutsuslist":
                    currentIndex = req.Form["pageIndex"];
                    pageCount = req.Form["pageSize"];
                    jsonDic = new Dictionary<string, string>();
                    jsonDic.Add("data", Utils.DataTableToJSON(com.ym.aboutus.getAboutusList(currentIndex, pageCount)));
                    jsonDic.Add("count", com.ym.aboutus.getAboutusCount());
                    js = new JavaScriptSerializer();
                    res.Write(js.Serialize(jsonDic));
                    break;
                case "deleteymaboutus":
                    id = req.QueryString["id"];
                    res.Write(Utils.GetReulst(200, "删除成功！", "删除失败！", com.ym.aboutus.deleteAboutusById(id)));
                    break;
                case "getymaboutusdetailbyid":
                    id = req.Params["id"];
                    res.Write(Utils.DataTableToJSON(com.ym.aboutus.getAboutusDetailById(id)));
                    break;
                #endregion

                #region 服务
                case "addymservices":
                    status = com.ym.services.addServices(req.Form["ym_services_title"], req.Form["ym_services_subtitle"], req.Form["ym_services_photo"], req.Form["ym_services_content"]);
                    reulst = Utils.GetReulst(200, "添加成功！", "添加失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "updateservices":
                    status = com.ym.services.updateServices(req.Params["id"], req.Form["ym_services_title"], req.Form["ym_services_subtitle"], req.Form["ym_services_photo"], req.Form["ym_services_content"]);
                    reulst = Utils.GetReulst(200, "修改成功！", "修改失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "ymserviceslist":
                    currentIndex = req.Form["pageIndex"];
                    pageCount = req.Form["pageSize"];
                    jsonDic = new Dictionary<string, string>();
                    jsonDic.Add("data", Utils.DataTableToJSON(com.ym.services.getServicesList(currentIndex, pageCount)));
                    jsonDic.Add("count", com.ym.services.getServicesCount());
                    js = new JavaScriptSerializer();
                    res.Write(js.Serialize(jsonDic));
                    break;
                case "deleteymservices":
                    id = req.QueryString["id"];
                    res.Write(Utils.GetReulst(200, "删除成功！", "删除失败！", com.ym.services.deleteServicesById(id)));
                    break;
                case "getymservicesdetailbyid":
                    id = req.Params["id"];
                    res.Write(Utils.DataTableToJSON(com.ym.services.getServicesDetailById(id)));
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