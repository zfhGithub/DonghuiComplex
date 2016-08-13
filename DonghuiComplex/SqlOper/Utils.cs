using Newtonsoft.Json;
using SQLOper.Models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;

namespace SqlOper
{
    public static class Utils
    {

        private static string language = "zh-cn";

        public static string Language
        {
            get
            {
                if (language == null)
                {
                    language = "zh-cn";
                }
                return language;
            }

            set
            {
                language = value;
            }
        }

        /// <summary>
        /// 生成缩略图
        /// </summary>
        /// <param name="serverImagePath">图片地址</param>
        /// <param name="thumbnailImagePath">缩略图地址</param>
        /// <param name="width">图片宽度</param>
        /// <param name="height">图片高度</param>
        /// <param name="SaveFileName">保存到数据的名称</param>
        public static String GetThumbnail(string serverImagePath, string thumbnailImagePath, int width, int height, String SaveFileName)
        {
            try
            {
                System.Drawing.Image serverImage = System.Drawing.Image.FromFile(serverImagePath);

                //画板大小
                int towidth = width;
                int toheight = height;
                //缩略图矩形框的像素点
                //int x = 0;
                //int y = 0;
                int ow = serverImage.Width;
                int oh = serverImage.Height;

                //if (ow > oh)
                //{
                //    toheight = serverImage.Height * width / serverImage.Width;
                //}
                //else
                //{
                //    towidth = serverImage.Width * height / serverImage.Height;
                //}
                //新建一个bmp图片
                System.Drawing.Image bm = new System.Drawing.Bitmap(width, height);
                //新建一个画板
                System.Drawing.Graphics g = System.Drawing.Graphics.FromImage(bm);
                //设置高质量插值法
                g.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.High;
                //设置高质量,低速度呈现平滑程度
                g.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
                //清空画布并以透明背景色填充
                g.Clear(System.Drawing.Color.White);
                //在指定位置并且按指定大小绘制原图片的指定部分
                g.DrawImage(serverImage, new System.Drawing.Rectangle((width - towidth) / 2, (height - toheight) / 2, towidth, toheight), 0, 0, ow, oh, System.Drawing.GraphicsUnit.Pixel);
                try
                {
                    //以jpg格式保存缩略图
                    bm.Save(thumbnailImagePath);
                    return "{\"status\":1,\"msg\":\"上传成功\",\"src\":\"" + Utils.urlconvertor("../" + thumbnailImagePath) + "\",\"ImgName\":\"" + SaveFileName + "\",\"statusCode\":\"200\"}";
                }
                catch (System.Exception e)
                {
                    return "{\"status\":2,\"msg\":\"" + e.Message + "\",\"statusCode\":\"300\"}";
                }
                finally
                {
                    serverImage.Dispose();
                    bm.Dispose();
                    g.Dispose();
                    File.Delete(serverImagePath);
                }
            }
            catch (Exception ex)
            {
                File.Delete(serverImagePath);
                return "{\"status\":3,\"msg\":\"请上传有效的图片文件\",\"statusCode\":\"300\"}";
            }

        }
        /// <summary>
        /// 本地路径转换成URL相对路径
        /// </summary>
        /// <param name="imagesurl1"></param>
        /// <returns></returns>
        public static string urlconvertor(string imagesurl1)
        {
            string tmpRootDir = System.Web.HttpContext.Current.Server.MapPath(System.Web.HttpContext.Current.Request.ApplicationPath.ToString());//获取程序根目录
            string imagesurl2 = imagesurl1.Replace(tmpRootDir, ""); //转换成相对路径
            imagesurl2 = imagesurl2.Replace(@"\", @"/");
            return imagesurl2;
        }

        /// <summary>
        /// 相对路径转换成服务器本地物理路径
        /// </summary>
        /// <param name="imagesurl1"></param>
        /// <returns></returns>
        public static string urlconvertorlocal(string imagesurl1)
        {
            string tmpRootDir = System.Web.HttpContext.Current.Server.MapPath(System.Web.HttpContext.Current.Request.ApplicationPath.ToString());//获取程序根目录
            string imagesurl2 = tmpRootDir + imagesurl1.Replace(@"/", @"\"); //转换成绝对路径
            return imagesurl2;
        }

        public static void ImageAddFont(string filename)
        {
            Bitmap bmp = new Bitmap(filename);
            Graphics g = Graphics.FromImage(bmp);
            String str = "http://www.bestcaps.cn/";
            Font font = new Font("宋体", 8);
            SolidBrush sbrush = new SolidBrush(Color.Black);
            g.DrawString(str, font, sbrush, new PointF(10, 10));
            MemoryStream ms = new MemoryStream();
            bmp.Save(ms, System.Drawing.Imaging.ImageFormat.Bmp);
        }
        /// <summary>
        ///  给导出的图片加上文字描述 
        /// </summary>
        /// <param name="filePath"></param>
        /// <param name="strDescription">文字描述</param>
        /// <param name="font"></param>
        /// <param name="pointX"></param>
        /// <param name="pointY"></param>
        public static void SetPicDescription(string filePath, string strDescription = null, float font = 13, float pointX = 30, float pointY = 20)
        {

            if (System.IO.File.Exists(filePath))//看该路径下图片是否存在
            {
                System.IO.MemoryStream ms = new System.IO.MemoryStream(System.IO.File.ReadAllBytes(filePath));
                Image image = Image.FromStream(ms);
                Graphics g = Graphics.FromImage(image);
                //Brush drawBrush = new SolidBrush(System.Drawing.Color.FromArgb(((System.Byte)(222)), ((System.Byte)(243)), ((System.Byte)(255)))); //自定义字体颜色
                if (pointX < 1)
                {
                    pointX = image.Width / (1 / pointX);
                }
                if (pointY < 1)
                {
                    pointY = image.Height / (1 / pointY);
                }
                else
                {
                    pointY = image.Height - pointY;
                }

                //  SqlOper.SqlHelper ss = new SqlHelper();
                // Hashtable hs =  ss.Select("select * from company");

                strDescription = strDescription ?? "http://www.bestcaps.cn/";// hs["WatermarkText"].ToString();
                                                                             //  g.DrawString(strDescription, new Font("宋体", font), new SolidBrush(Color.FromArgb(Convert.ToInt32(hs["WatermarkColor"]))), new PointF(pointX, pointY));
                g.DrawString(strDescription, new Font("宋体", font), Brushes.Red, new PointF(pointX, pointY));
                System.IO.File.Delete(filePath);
                image.Save(filePath);
            }



        }
        public static string ToStringEmpty(this Object str)
        {
            if (str == null)
            {
                return "";
            }
            else
            {
                return str.ToString();
            }
        }

        public static string GetReulst(int statusCode, string successMsg, string failureMsg = "", int? count = null, string closeCurrent = "false", string json = "")
        {
            string msg = "";
            if (count != null)
            {
                if (count > 0)
                {
                    msg = successMsg;
                }
                else
                {
                    closeCurrent = "false";
                    msg = failureMsg;
                }
            }
            if (string.Empty != json)
            {
                json = "," + json;
            }
            string str = "{ \"statusCode\":\"" + statusCode + "\",    \"message\":\"" + msg + "\",   \"tabid\":\"\",	\"closeCurrent\":" + closeCurrent + ",    \"forward\":\"\",   \"forwardConfirm\":\"\" " + json + "}";

            return str;
        }

        /// <summary>    
        /// 把表格转换成json数据   
        /// /// 通过表格名查找表格数组中的数据   
        /// /// </summary>    
        /// <param name="table">表格</param>    
        /// <param name="JsonName">表格名称</param>
        /// <returns></returns>    
        public static string DataTableToJSON(DataTable table, string TableName = "d")
        {
            StringBuilder sb = new StringBuilder();
            StringWriter sw = new StringWriter(sb);
            using (JsonWriter jw = new JsonTextWriter(sw))
            {
                JsonSerializer ser = new JsonSerializer();
                jw.WriteStartObject();
                jw.WritePropertyName(TableName);
                //  表格名           
                jw.WriteStartArray();
                // 表格数组           
                try
                {
                    //   通过循环输出表格中数据               
                    foreach (DataRow dr in table.Rows)
                    {
                        jw.WriteStartObject();
                        foreach (DataColumn dc in table.Columns)
                        {
                            jw.WritePropertyName(dc.ColumnName);
                            ser.Serialize(jw, dr[dc].ToString());
                        }
                        jw.WriteEndObject();//结束输出        
                    }
                    jw.WriteEndArray();//结束表格输出              
                    jw.WriteEndObject();//结束输出     
                }
                catch (Exception ex)
                {
                    string me = ex.Message;
                }
                sw.Close();//关闭流           
                jw.Close();//关闭流      
            }
            return sb.ToString();
        }
        public static string UploadImage(HttpPostedFile file, string type, HttpContext context)
        {
            if (type == "head")
            {
                #region 上传商品头像 
                if (file.ContentLength > 2097152)
                {
                    return "{\"status\":\"0\",\"statusCode\":\"300\",message:\"图片不能大于2兆\"}";
                }
                String filepath = HttpContext.Current.Server.MapPath("~") + @"images\head\";
                if (!Directory.Exists(filepath))
                {
                    Directory.CreateDirectory(filepath);
                }
                String fileName = Guid.NewGuid() + ".png";
                file.SaveAs(filepath + fileName);

                //  string rt = Utils.GetThumbnail(filepath + fileName, filepath + "best-" + fileName, 160, 100, "best-" + fileName);
                //  Utils.SetPicDescription(filepath + "best-" + fileName, "BESTCAPS", pointX: 0.2f, pointY: 0.5f);
                return "{ \"statusCode\":\"200\",\"url\":\"/images/head/" + fileName + "\"}"; ;
                #endregion
            }
            else if (type.StartsWith("banner"))
            {
                #region 首页轮播图

                if (file.ContentLength > 5242880)
                {
                    return "{ \"statusCode\":\"300\",\"message\":\"文件不能超过5兆\"}";
                }
                String filepath = HttpContext.Current.Server.MapPath("~") + @"assets\images\banner\";
                if (!Directory.Exists(filepath))
                {
                    Directory.CreateDirectory(filepath);
                }
                String fileName = "";
                SQLServerOperating s = new SQLServerOperating();
                string oldBanners = s.Select("select bannerImages from Company");
                string oldName = context.Request.Params["oldname"];
                string newBanners = "";
                fileName = Guid.NewGuid() + ".jpg";
                if (string.IsNullOrWhiteSpace(oldName))
                {
                    newBanners += oldBanners + fileName + ";";

                }
                else
                {
                    newBanners = oldBanners.Replace(oldName + "", fileName);
                }



                if (File.Exists(filepath + fileName))
                {
                    File.Delete(filepath + fileName);
                }
                file.SaveAs(filepath + fileName);

                // newBanners += fileName + ";"; 
                s.ExecuteSql("update Company set bannerImages ='" + newBanners + "' ");
                return "{ \"statusCode\":200,\"url\":\"/assets/images/banner/" + fileName + "\",\"fun\":\"" + type + "\"}";

                #endregion
            }
            else if (type == "kindeditor")
            {
                #region kindeditor

                if (file.ContentLength > 5242880)
                {
                    return "{ \"statusCode\":\"300\",\"message\":\"文件不能超过5兆\"}";
                }
                String filepath = HttpContext.Current.Server.MapPath("~") + @"images\detail\";
                if (!Directory.Exists(filepath))
                {
                    Directory.CreateDirectory(filepath);
                }
                try
                {
                    String fileName = Guid.NewGuid() + ".png";
                    file.SaveAs(filepath + fileName);
                    // return "{ \"statusCode\":\"200\",\"message\":\"上传成功\",\"src\":\""+fileName+"\"}";
                    // Utils.SetPicDescription(filepath + fileName, font: 30, pointX: 0.25f, pointY: 0.5f);
                    return "{ \"error\":0,\"url\":\"/images/detail/" + fileName + "\"}";
                }
                catch
                {
                    return "{ \"statusCode\":\"300\",\"message\":\"上传失败\"}";
                }
                #endregion
            }
            else if (type == "logo")
            {
                #region logo
                if (file.ContentLength > 2097152)
                {
                    return "{\"status\":\"0\",\"statusCode\":\"300\"}";
                }
                String filepath = HttpContext.Current.Server.MapPath("~") + @"assets\images\";
                string fileName = "logo.png";
                if (File.Exists(filepath + fileName))
                {
                    File.Delete(filepath + fileName);
                }
                file.SaveAs(filepath + fileName);
                return "{ \"statusCode\":\"200\",\"url\":\"assets/images/" + fileName + "\"}"; ;
                #endregion
            }
            else if (type == "erweima")
            {
                #region 微信二维码
                if (file.ContentLength > 2097152)
                {
                    return "{\"status\":\"0\",\"statusCode\":\"300\"}";
                }
                String filepath = HttpContext.Current.Server.MapPath("~") + @"assets\customerservice\images\";
                string fileName = "erweima.jpg";
                if (File.Exists(filepath + fileName))
                {
                    File.Delete(filepath + fileName);
                }
                file.SaveAs(filepath + fileName);
                return "{ \"statusCode\":\"200\",\"url\":\"../assets/customerservice/images/" + fileName + "\"}"; ;
                #endregion
            }
            else
            {
                if (file.ContentLength > 5242880)
                {
                    return "{ \"statusCode\":\"300\",\"message\":\"文件不能超过5兆\"}";
                }
                String filepath = HttpContext.Current.Server.MapPath("~") + @"image\product\";
                if (!Directory.Exists(filepath))
                {
                    Directory.CreateDirectory(filepath);
                }
                try
                {
                    String fileName = Guid.NewGuid() + ".png";
                    file.SaveAs(filepath + fileName);
                    //   Utils.GetThumbnail(filepath + fileName, filepath + "best-" + fileName, 160, 100, "best-" + fileName);
                    // Utils.SetPicDescription(filepath + fileName, font: 23, pointX: 0.25f, pointY: 0.5f);
                    return "{ \"statusCode\":\"200\",\"message\":\"上传成功\",\"src\":\"" + fileName + "\"}";
                }
                catch
                {
                    return "{ \"statusCode\":\"300\",\"message\":\"上传失败\"}";
                }

            }
        }


        public static int DeleteBanner(string oldName)
        {
            SQLServerOperating s = new SQLServerOperating();
            string oldBanners = s.Select("select bannerImages from Company");
            oldBanners = oldBanners.Replace(oldName + ";", "");
            return s.ExecuteSql("update Company set bannerImages ='" + oldBanners + "' ");

        }

        private static string _sessionName;
        public static string SessionName
        {
            get
            {
                return _sessionName ?? "UserInfo";
            }

            set
            {
                _sessionName = value;
            }
        }
        public static void setSession(Users user)
        {
            HttpContext.Current.Session[_sessionName] = user;
        }

        public static Users getSession(string key = null)
        {
            return HttpContext.Current.Session[key ?? _sessionName] as Users;
        }
    }
}
