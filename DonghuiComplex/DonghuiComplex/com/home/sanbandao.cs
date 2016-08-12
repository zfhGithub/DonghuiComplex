using SqlOper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace DonghuiComplex.com.home
{
    public class sanbandao
    {
        public static int setHomeSaibandao(string title,string content)
        {
            string sql = string.Format( "update News set title='{0}' ,content='{1}' where type='HomeSaibandao' ",title, content);
            SQLServerOperating s = new SQLServerOperating();
            return s.ExecuteSql(sql);
        }
        /// <summary>
        /// 首页 农业模块设置
        /// </summary>
        /// <param name="title"></param>
        /// <param name="content"></param>
        /// <returns></returns>
        public static int setHomeAgriculture(string title,string content)
        {
            string sql = string.Format("update News set title='{0}' ,content='{1}' where type='HomeNongye' ", title, content);
            SQLServerOperating s = new SQLServerOperating();
            return s.ExecuteSql(sql);
        }
        /// <summary>
        /// 首页 地产模块设置
        /// </summary>
        /// <param name="title"></param>
        /// <param name="content"></param>
        /// <returns></returns>
        public static int setHomeEstate(string title, string content)
        {
            string sql = string.Format("update News set title='{0}' ,content='{1}' where type='HomeDichan' ", title, content);
            SQLServerOperating s = new SQLServerOperating();
            return s.ExecuteSql(sql);
        }

        /// <summary>
        /// 首页 移民模块设置
        /// </summary>
        /// <param name="title"></param>
        /// <param name="content"></param>
        /// <returns></returns>
        public static int setHomeImmigrant(string title, string content)
        {
            string sql = string.Format("update News set title='{0}' ,content='{1}' where type='HomeYimin' ", title, content);
            SQLServerOperating s = new SQLServerOperating();
            return s.ExecuteSql(sql);
        }

        /// <summary>
        /// 获取 首页 移民模块 
        /// </summary>
        /// <param name="title"></param>
        /// <param name="content"></param>
        /// <returns></returns>
        public static int setHomeTourism(string title, string content)
        {
            string sql = string.Format("update News set title='{0}' ,content='{1}' where type='HomeLvyou' ", title, content);
            SQLServerOperating s = new SQLServerOperating();
            return s.ExecuteSql(sql);
        }




        public static DataTable getHomeSaibandao( )
        {
            string sql = string.Format("select * from News where type='HomeSaibandao' " );
            SQLServerOperating s = new SQLServerOperating();
            return s.Selects(sql);
        }
        /// <summary>
        /// 获取 首页 农业模块设置
        /// </summary> 
        /// <returns></returns>
        public static DataTable getHomeAgriculture( )
        {
            string sql = string.Format("select * from News where type='HomeNongye' " );
            SQLServerOperating s = new SQLServerOperating();
            return s.Selects(sql);
        }
        /// <summary>
        /// 获取 首页 地产模块 
        /// </summary> 
        /// <returns></returns>
        public static DataTable getHomeEstate( )
        {
            string sql = string.Format(" select * from News where type='HomeDichan' " );
            SQLServerOperating s = new SQLServerOperating();
            return s.Selects(sql);
        }

        /// <summary>
        /// 获取 首页 移民模块
        /// </summary> 
        /// <returns></returns>
        public static DataTable getHomeImmigrant( )
        {
            string sql = string.Format("select * from News where type='HomeYimin' ");
            SQLServerOperating s = new SQLServerOperating();
            return s.Selects(sql);
        }

        /// <summary>
        /// 获取 首页 移民模块
        /// </summary> 
        /// <returns></returns>
        public static DataTable getHomeTourism()
        {
            string sql = string.Format("select * from News where type='HomeLvyou' ");
            SQLServerOperating s = new SQLServerOperating();
            return s.Selects(sql);
        }
    }
}