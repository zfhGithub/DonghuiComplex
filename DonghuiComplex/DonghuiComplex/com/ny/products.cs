﻿using SqlOper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace DonghuiComplex.com.ny
{
    public class products
    {
        public static int addProducts(string title, string subtitle, string photo, string content)
        {
            string strSql = string.Format(@"INSERT INTO [News] ([type],[subtitle],[content],created,photo,title,deleted)
                                            VALUES (@type,@subtitle,@content,getdate(),@photo,@title,0)");
            SqlParameter[] sp = new SqlParameter[] {
                new SqlParameter ("type","ny_products"),new SqlParameter ("title",title),
                new SqlParameter ("content",content),new SqlParameter ("subtitle",subtitle),
                new SqlParameter ("photo",photo)
            };
            SqlOper.SQLServerOperating s = new SqlOper.SQLServerOperating();
            return s.ExecuteSql(strSql, sp);
        }

        public static DataTable getProductsList(string currentIndex, string pageCount)
        {
            string strSql = string.Format(@" select top {0} * from (
                                 select ROW_NUMBER() OVER(order by id desc) rowIndex , id, type,  title, subtitle, photo, content, created, deleted from News
                                where deleted=0 and type='ny_products'
                                )t where rowIndex > {0} * ({1}-1)", pageCount, currentIndex);
            SQLServerOperating s = new SQLServerOperating();
            return s.Selects(strSql);
        }

        public static int updateProducts(string id, string title, string subtitle, string photo, string content)
        {
            string strSql = string.Format(@"update News set subtitle=@subtitle,title=@title,photo=@photo,content=@content where id=@id and type='ny_products'");
            SqlParameter[] sp = new SqlParameter[] {
                new SqlParameter ("id",id),new SqlParameter ("title",title),
                new SqlParameter ("content",content),new SqlParameter ("subtitle",subtitle),
                new SqlParameter ("photo",photo)
            };
            SqlOper.SQLServerOperating s = new SqlOper.SQLServerOperating();
            return s.ExecuteSql(strSql, sp);
        }

        public static string getProductsCount()
        {
            string strSql = " select COUNT(*) from News where  deleted=0 and type='ny_products'";
            SQLServerOperating s = new SQLServerOperating();
            return s.Select(strSql);
        }

        public static int deleteProductsById(string id)
        {
            string strSql = "update News set deleted = 1 where id=" + id;
            SQLServerOperating s = new SQLServerOperating();
            return s.ExecuteSql(strSql);
        }
        public static DataTable getProductsDetailById(string id)
        {
            string strSql = "select id, type, title, subtitle, photo, content, created, deleted from News where type = 'ny_products' and deleted = 0 and id=" + id;
            SQLServerOperating s = new SQLServerOperating();
            return s.Selects(strSql);
        }

    }
}