﻿using SqlOper;
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
                case "updatepassword":
                    string olepassword = req.Params["olepassword"];
                    string newpassword = req.Params["newpassword"];
                    res.Write(Utils.GetReulst(200, "修改成功", "修改失败", com.settings.updatePassword(newpassword, olepassword),"true"));
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
                case "deletemessage":
                    string id = req.Params["pid"];
                    res.Write(Utils.GetReulst(200, "删除成功", "删除失败", com.message.deleteMessage(id)));
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
                      id = req.QueryString["id"];
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

                #region 新闻
                case "addymnews":
                    status = com.ym.news.addNews(req.Form["ym_news_title"], req.Form["ym_news_subtitle"], req.Form["ym_news_photo"], req.Form["ym_news_content"]);
                    reulst = Utils.GetReulst(200, "添加成功！", "添加失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "updateymnews":
                    status = com.ym.news.updateNews(req.Params["id"], req.Form["ym_news_title"], req.Form["ym_news_subtitle"], req.Form["ym_news_photo"], req.Form["ym_news_content"]);
                    reulst = Utils.GetReulst(200, "修改成功！", "修改失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "ymnewslist":
                    currentIndex = req.Form["pageIndex"];
                    pageCount = req.Form["pageSize"];
                    jsonDic = new Dictionary<string, string>();
                    jsonDic.Add("data", Utils.DataTableToJSON(com.ym.news.getNewsList(currentIndex, pageCount)));
                    jsonDic.Add("count", com.ym.news.getNewsCount());
                    js = new JavaScriptSerializer();
                    res.Write(js.Serialize(jsonDic));
                    break;
                case "deleteymnews":
                    id = req.QueryString["id"];
                    res.Write(Utils.GetReulst(200, "删除成功！", "删除失败！", com.ym.news.deleteNewsById(id)));
                    break;
                case "getymnewsdetailbyid":
                    id = req.Params["id"];
                    res.Write(Utils.DataTableToJSON(com.ym.news.getNewsDetailById(id)));
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

                #region 旅游
                #region 关于
                case "getlyaboutinfo":
                    res.Write(Utils.DataTableToJSON(com.ly.aboutinfo.getAboutInfo()));
                    break;
                case "setlyaboutus":
                    title = req.Form["ly_aboutus_title"];
                    content = req.Form["ly_aboutus_content"];
                    status = com.ly.aboutinfo.setAboutInfo(title,content);
                    context.Response.Write(Utils.GetReulst(200, "设置成功", "设置失败", status));
                    break;
                #endregion
            
                #region 服务
                case "addlyservices":
                    status = com.ly.services.addServices(req.Form["ly_services_title"], req.Form["ly_services_subtitle"], req.Form["ly_services_photo"], req.Form["ly_services_content"]);
                    reulst = Utils.GetReulst(200, "添加成功！", "添加失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "updatelyservices":
                    status = com.ly.services.updateServices(req.Params["id"], req.Form["ly_services_title"], req.Form["ly_services_subtitle"], req.Form["ly_services_photo"], req.Form["ly_services_content"]);
                    reulst = Utils.GetReulst(200, "修改成功！", "修改失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "lyserviceslist":
                    currentIndex = req.Form["pageIndex"];
                    pageCount = req.Form["pageSize"];
                    jsonDic = new Dictionary<string, string>();
                    jsonDic.Add("data", Utils.DataTableToJSON(com.ly.services.getServicesList(currentIndex, pageCount)));
                    jsonDic.Add("count", com.ly.services.getServicesCount());
                    js = new JavaScriptSerializer();
                    res.Write(js.Serialize(jsonDic));
                    break;
                case "deletelyservices":
                    id = req.QueryString["id"];
                    res.Write(Utils.GetReulst(200, "删除成功！", "删除失败！", com.ly.services.deleteServicesById(id)));
                    break;
                case "getlyservicesdetailbyid":
                    id = req.Params["id"];
                    res.Write(Utils.DataTableToJSON(com.ly.services.getServicesDetailById(id)));
                    break;
                #endregion

                #region 现场
                case "addlylive":
                    status = com.ly.live.addLive(req.Form["ly_live_title"], req.Form["ly_live_subtitle"], req.Form["ly_live_photo"], req.Form["ly_live_content"]);
                    reulst = Utils.GetReulst(200, "添加成功！", "添加失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "updatelylive":
                    status = com.ly.live.updateLive(req.Params["id"], req.Form["ly_live_title"], req.Form["ly_live_subtitle"], req.Form["ly_live_photo"], req.Form["ly_live_content"]);
                    reulst = Utils.GetReulst(200, "修改成功！", "修改失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "lylivelist":
                    currentIndex = req.Form["pageIndex"];
                    pageCount = req.Form["pageSize"];
                    jsonDic = new Dictionary<string, string>();
                    jsonDic.Add("data", Utils.DataTableToJSON(com.ly.live.getLiveList(currentIndex, pageCount)));
                    jsonDic.Add("count", com.ly.live.getLiveCount());
                    js = new JavaScriptSerializer();
                    res.Write(js.Serialize(jsonDic));
                    break;
                case "deletelylive":
                    id = req.QueryString["id"];
                    res.Write(Utils.GetReulst(200, "删除成功！", "删除失败！", com.ly.live.deleteLiveById(id)));
                    break;
                case "getlylivedetailbyid":
                    id = req.Params["id"];
                    res.Write(Utils.DataTableToJSON(com.ly.live.getLiveDetailById(id)));
                    break;
                #endregion
                     
                #region 景点管理
                case "addlyjingdian":
                    status = com.ly.jingdian.addJingdian(req.Form["ly_jingdian_title"], req.Form["ly_jingdian_subtitle"], req.Form["ly_jingdian_photo"], req.Form["ly_jingdian_content"]);
                    reulst = Utils.GetReulst(200, "添加成功！", "添加失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "updatelyjingdian":
                    status = com.ly.jingdian.updateJingdian(req.Params["id"], req.Form["ly_jingdian_title"], req.Form["ly_jingdian_subtitle"], req.Form["ly_jingdian_photo"], req.Form["ly_jingdian_content"]);
                    reulst = Utils.GetReulst(200, "修改成功！", "修改失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "lyjingdianlist":
                    currentIndex = req.Form["pageIndex"];
                    pageCount = req.Form["pageSize"];
                    jsonDic = new Dictionary<string, string>();
                    jsonDic.Add("data", Utils.DataTableToJSON(com.ly.jingdian.getJingdianList(currentIndex, pageCount)));
                    jsonDic.Add("count", com.ly.jingdian.getJingdianCount());
                    js = new JavaScriptSerializer();
                    res.Write(js.Serialize(jsonDic));
                    break;
                case "deletelyjingdian":
                    id = req.QueryString["id"];
                    res.Write(Utils.GetReulst(200, "删除成功！", "删除失败！", com.ly.jingdian.deleteJingdianById(id)));
                    break;
                case "getlyjingdiandetailbyid":
                    id = req.Params["id"];
                    res.Write(Utils.DataTableToJSON(com.ly.jingdian.getJingdianDetailById(id)));
                    break;

                #endregion

                #region 轮播图
                case "addlybanner":
                    status = com.ly.banner.addBanner(req.Form["ly_banner_title"], req.Form["ly_banner_subtitle"], req.Form["ly_banner_photo"], req.Form["ly_banner_content"]);
                    reulst = Utils.GetReulst(200, "添加成功！", "添加失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "updatelybanner":
                    status = com.ly.banner.updateBanner(req.Params["id"], req.Form["ly_banner_title"], req.Form["ly_banner_subtitle"], req.Form["ly_banner_photo"], req.Form["ly_banner_content"]);
                    reulst = Utils.GetReulst(200, "修改成功！", "修改失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "lybannerlist":
                    currentIndex = req.Form["pageIndex"];
                    pageCount = req.Form["pageSize"];
                    jsonDic = new Dictionary<string, string>();
                    jsonDic.Add("data", Utils.DataTableToJSON(com.ly.banner.getBannerList(currentIndex, pageCount)));
                    jsonDic.Add("count", com.ly.banner.getBannerCount());
                    js = new JavaScriptSerializer();
                    res.Write(js.Serialize(jsonDic));
                    break;
                case "deletelybanner":
                    id = req.QueryString["id"];
                    res.Write(Utils.GetReulst(200, "删除成功！", "删除失败！", com.ly.banner.deleteBannerById(id)));
                    break;
                case "getlybannerdetailbyid":
                    id = req.Params["id"];
                    res.Write(Utils.DataTableToJSON(com.ly.banner.getBannerDetailById(id)));
                    break;
                #endregion
                #endregion

                #region 农业
                #region 产品
                case "addnyproducts":
                    status = com.ny.products.addProducts(req.Form["ny_products_title"], req.Form["ny_products_subtitle"], req.Form["ny_products_photo"], req.Form["ny_products_content"]);
                    reulst = Utils.GetReulst(200, "添加成功！", "添加失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "updatenyproducts":
                    status = com.ny.products.updateProducts(req.Params["id"], req.Form["ny_products_title"], req.Form["ny_products_subtitle"], req.Form["ny_products_photo"], req.Form["ny_products_content"]);
                    reulst = Utils.GetReulst(200, "修改成功！", "修改失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "nyproductslist":
                    currentIndex = req.Form["pageIndex"];
                    pageCount = req.Form["pageSize"];
                    jsonDic = new Dictionary<string, string>();
                    jsonDic.Add("data", Utils.DataTableToJSON(com.ny.products.getProductsList(currentIndex, pageCount)));
                    jsonDic.Add("count", com.ny.products.getProductsCount());
                    js = new JavaScriptSerializer();
                    res.Write(js.Serialize(jsonDic));
                    break;
                case "deletenyproducts":
                    id = req.QueryString["id"];
                    res.Write(Utils.GetReulst(200, "删除成功！", "删除失败！", com.ny.products.deleteProductsById(id)));
                    break;
                case "getnyproductsdetailbyid":
                    id = req.Params["id"];
                    res.Write(Utils.DataTableToJSON(com.ny.products.getProductsDetailById(id)));
                    break;

                #endregion

                #region 关于
                case "addnyaboutus":
                    status = com.ny.aboutus.addAboutus(req.Form["ny_aboutus_title"], req.Form["ny_aboutus_subtitle"], req.Form["ny_aboutus_photo"], req.Form["ny_aboutus_content"]);
                    reulst = Utils.GetReulst(200, "添加成功！", "添加失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "updatenyaboutus":
                    status = com.ny.aboutus.updateAboutus(req.Params["id"], req.Form["ny_aboutus_title"], req.Form["ny_aboutus_subtitle"], req.Form["ny_aboutus_photo"], req.Form["ny_aboutus_content"]);
                    reulst = Utils.GetReulst(200, "修改成功！", "修改失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "nyaboutsuslist":
                    currentIndex = req.Form["pageIndex"];
                    pageCount = req.Form["pageSize"];
                    jsonDic = new Dictionary<string, string>();
                    jsonDic.Add("data", Utils.DataTableToJSON(com.ny.aboutus.getAboutusList(currentIndex, pageCount)));
                    jsonDic.Add("count", com.ny.aboutus.getAboutusCount());
                    js = new JavaScriptSerializer();
                    res.Write(js.Serialize(jsonDic));
                    break;
                case "deletenyaboutus":
                    id = req.QueryString["id"];
                    res.Write(Utils.GetReulst(200, "删除成功！", "删除失败！", com.ny.aboutus.deleteAboutusById(id)));
                    break;
                case "getnyaboutusdetailbyid":
                    id = req.Params["id"];
                    res.Write(Utils.DataTableToJSON(com.ny.aboutus.getAboutusDetailById(id)));
                    break;
                #endregion

                #region 新闻
                case "addnynews":
                    status = com.ny.news.addNews(req.Form["ny_news_title"], req.Form["ny_news_subtitle"], req.Form["ny_news_photo"], req.Form["ny_news_content"]);
                    reulst = Utils.GetReulst(200, "添加成功！", "添加失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "updatenynews":
                    status = com.ny.news.updateNews(req.Params["id"], req.Form["ny_news_title"], req.Form["ny_news_subtitle"], req.Form["ny_news_photo"], req.Form["ny_news_content"]);
                    reulst = Utils.GetReulst(200, "修改成功！", "修改失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "nynewslist":
                    currentIndex = req.Form["pageIndex"];
                    pageCount = req.Form["pageSize"];
                    jsonDic = new Dictionary<string, string>();
                    jsonDic.Add("data", Utils.DataTableToJSON(com.ny.news.getNewsList(currentIndex, pageCount)));
                    jsonDic.Add("count", com.ny.news.getNewsCount());
                    js = new JavaScriptSerializer();
                    res.Write(js.Serialize(jsonDic));
                    break;
                case "deletenynews":
                    id = req.QueryString["id"];
                    res.Write(Utils.GetReulst(200, "删除成功！", "删除失败！", com.ny.news.deleteNewsById(id)));
                    break;
                case "getnynewsdetailbyid":
                    id = req.Params["id"];
                    res.Write(Utils.DataTableToJSON(com.ny.news.getNewsDetailById(id)));
                    break;
                #endregion

                #endregion


                #region 地产

                #region 服务
                case "adddcservices":
                    status = com.dc.services.addServices(req.Form["dc_services_title"], req.Form["dc_services_subtitle"], req.Form["dc_services_photo"], req.Form["dc_services_content"]);
                    reulst = Utils.GetReulst(200, "添加成功！", "添加失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "updatedcservices":
                    status = com.dc.services.updateServices(req.Params["id"], req.Form["dc_services_title"], req.Form["dc_services_subtitle"], req.Form["dc_services_photo"], req.Form["dc_services_content"]);
                    reulst = Utils.GetReulst(200, "修改成功！", "修改失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "dcserviceslist":
                    currentIndex = req.Form["pageIndex"];
                    pageCount = req.Form["pageSize"];
                    jsonDic = new Dictionary<string, string>();
                    jsonDic.Add("data", Utils.DataTableToJSON(com.dc.services.getServicesList(currentIndex, pageCount)));
                    jsonDic.Add("count", com.dc.services.getServicesCount());
                    js = new JavaScriptSerializer();
                    res.Write(js.Serialize(jsonDic));
                    break;
                case "deletedcservices":
                    id = req.QueryString["id"];
                    res.Write(Utils.GetReulst(200, "删除成功！", "删除失败！", com.dc.services.deleteServicesById(id)));
                    break;
                case "getdcservicesdetailbyid":
                    id = req.Params["id"];
                    res.Write(Utils.DataTableToJSON(com.dc.services.getServicesDetailById(id)));
                    break;
                    #endregion

                #region 楼盘
                    case "adddcproperty":
                    status = com.dc.property.addProperty(req.Form["dc_property_title"], req.Form["dc_property_subtitle"], req.Form["dc_property_photo"], req.Form["dc_property_content"]);
                    reulst = Utils.GetReulst(200, "添加成功！", "添加失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "updatedcproperty":
                    status = com.dc.property.updateProperty(req.Params["id"], req.Form["dc_property_title"], req.Form["dc_property_subtitle"], req.Form["dc_property_photo"], req.Form["dc_property_content"]);
                    reulst = Utils.GetReulst(200, "修改成功！", "修改失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "dcpropertylist":
                    currentIndex = req.Form["pageIndex"];
                    pageCount = req.Form["pageSize"];
                    jsonDic = new Dictionary<string, string>();
                    jsonDic.Add("data", Utils.DataTableToJSON(com.dc.property.getPropertyList(currentIndex, pageCount)));
                    jsonDic.Add("count", com.dc.property.getPropertyCount());
                    js = new JavaScriptSerializer();
                    res.Write(js.Serialize(jsonDic));
                    break;
                case "deletedcproperty":
                    id = req.QueryString["id"];
                    res.Write(Utils.GetReulst(200, "删除成功！", "删除失败！", com.dc.property.deletePropertyById(id)));
                    break;
                case "getdcpropertydetailbyid":
                    id = req.Params["id"];
                    res.Write(Utils.DataTableToJSON(com.dc.property.getPropertyDetailById(id)));
                    break;
                #endregion
               
                #region 团队
                case "adddcmyteam":
                    status = com.dc.myteam.addMyteam(req.Form["dc_myteam_title"], req.Form["dc_myteam_subtitle"], req.Form["dc_myteam_photo"], req.Form["dc_myteam_content"]);
                    reulst = Utils.GetReulst(200, "添加成功！", "添加失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "updatedcmyteam":
                    status = com.dc.myteam.updateMyteam(req.Params["id"], req.Form["dc_myteam_title"], req.Form["dc_myteam_subtitle"], req.Form["dc_myteam_photo"], req.Form["dc_myteam_content"]);
                    reulst = Utils.GetReulst(200, "修改成功！", "修改失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "dcmyteamlist":
                    currentIndex = req.Form["pageIndex"];
                    pageCount = req.Form["pageSize"];
                    jsonDic = new Dictionary<string, string>();
                    jsonDic.Add("data", Utils.DataTableToJSON(com.dc.myteam.getMyteamList(currentIndex, pageCount)));
                    jsonDic.Add("count", com.dc.myteam.getMyteamCount());
                    js = new JavaScriptSerializer();
                    res.Write(js.Serialize(jsonDic));
                    break;
                case "deletedcmyteam":
                    id = req.QueryString["id"];
                    res.Write(Utils.GetReulst(200, "删除成功！", "删除失败！", com.dc.myteam.deleteMyteamById(id)));
                    break;
                case "getdcmyteamdetailbyid":
                    id = req.Params["id"];
                    res.Write(Utils.DataTableToJSON(com.dc.myteam.getMyteamDetailById(id)));
                    break;
                #endregion
            
                #region 轮播图 
                case "adddcbanner":
                    status = com.dc.banner.addBanner(req.Form["dc_banner_title"], req.Form["dc_banner_subtitle"], req.Form["dc_banner_photo"], req.Form["dc_banner_content"]);
                    reulst = Utils.GetReulst(200, "添加成功！", "添加失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "updatedcbanner":
                    status = com.dc.banner.updateBanner(req.Params["id"], req.Form["dc_banner_title"], req.Form["dc_banner_subtitle"], req.Form["dc_banner_photo"], req.Form["dc_banner_content"]);
                    reulst = Utils.GetReulst(200, "修改成功！", "修改失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "dcbannerlist":
                    currentIndex = req.Form["pageIndex"];
                    pageCount = req.Form["pageSize"];
                    jsonDic = new Dictionary<string, string>();
                    jsonDic.Add("data", Utils.DataTableToJSON(com.dc.banner.getBannerList(currentIndex, pageCount)));
                    jsonDic.Add("count", com.dc.banner.getBannerCount());
                    js = new JavaScriptSerializer();
                    res.Write(js.Serialize(jsonDic));
                    break;
                case "deletedcbanner":
                    id = req.QueryString["id"];
                    res.Write(Utils.GetReulst(200, "删除成功！", "删除失败！", com.dc.banner.deleteBannerById(id)));
                    break;
                case "getdcbannerdetailbyid":
                    id = req.Params["id"];
                    res.Write(Utils.DataTableToJSON(com.dc.banner.getBannerDetailById(id)));
                    break;

                #endregion

                #region 新闻
                case "adddcnews":
                    status = com.dc.news.addNews(req.Form["dc_news_title"], req.Form["dc_news_subtitle"], req.Form["dc_news_photo"], req.Form["dc_news_content"]);
                    reulst = Utils.GetReulst(200, "添加成功！", "添加失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "updatedcnews":
                    status = com.dc.news.updateNews(req.Params["id"], req.Form["dc_news_title"], req.Form["dc_news_subtitle"], req.Form["dc_news_photo"], req.Form["dc_news_content"]);
                    reulst = Utils.GetReulst(200, "修改成功！", "修改失败！", status, "true");
                    res.Write(reulst);
                    break;
                case "dcnewslist":
                    currentIndex = req.Form["pageIndex"];
                    pageCount = req.Form["pageSize"];
                    jsonDic = new Dictionary<string, string>();
                    jsonDic.Add("data", Utils.DataTableToJSON(com.dc.news.getNewsList(currentIndex, pageCount)));
                    jsonDic.Add("count", com.dc.news.getNewsCount());
                    js = new JavaScriptSerializer();
                    res.Write(js.Serialize(jsonDic));
                    break;
                case "deletedcnews":
                    id = req.QueryString["id"];
                    res.Write(Utils.GetReulst(200, "删除成功！", "删除失败！", com.dc.news.deleteNewsById(id)));
                    break;
                case "getdcnewsdetailbyid":
                    id = req.Params["id"];
                    res.Write(Utils.DataTableToJSON(com.dc.news.getNewsDetailById(id)));
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