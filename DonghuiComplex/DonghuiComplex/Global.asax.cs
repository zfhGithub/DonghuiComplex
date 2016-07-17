using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Security;
using System.IO; 

namespace Best
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // 在应用程序启动时运行的代码
            // AuthConfig.RegisterOpenAuth();
            //RouteConfig.RegisterRoutes(RouteTable.Routes);
            //using (StreamWriter sw = new StreamWriter("start.log"))
            //{
            //    sw.WriteLine("start.");
            //}
        }

        void Application_End(object sender, EventArgs e)
        {
            //  在应用程序关闭时运行的代码 
        }

        void Application_Error(object sender, EventArgs e)
        {
            //Exception ex = Server.GetLastError();
            //using (StreamWriter sw = new StreamWriter ("error.log"))
            //{
            //    sw.WriteLine(ex.Message);
            //}
            // 在出现未处理的错误时运行的代码 
        }
    }
}
