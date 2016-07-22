using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace SqlOper
{
    public class SQLServerOperating
    {

        private SqlConnection GetConnection()
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ToString();
            return conn;
        }

        public int ExecuteSql(string strSql)
        {
            using (SqlConnection conn = GetConnection())
            {  
                conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = strSql;　
                return cmd.ExecuteNonQuery(); ;
            } 
        }
        public int ExecuteSql(string strSql,SqlParameter[] sqlParameter)
        {
            using (SqlConnection conn = GetConnection())
            {
                conn.Open(); 
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = strSql;
                cmd.Connection = conn;
                cmd.Parameters.AddRange(sqlParameter);
                return cmd.ExecuteNonQuery(); ;
            }
        }

        public string Select(string strSql)
        {
            using (SqlConnection conn = GetConnection())
            { 
                conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = strSql; 
                return cmd.ExecuteScalar().ToStringEmpty();
            }
        }

        public DataTable Selects(string strSql)
        {
            try
            {
                using (SqlConnection conn = GetConnection())
                {
                    conn.Open(); 
                    SqlDataAdapter sda = new SqlDataAdapter(strSql,conn);
                    DataSet ds = new DataSet();
                    sda.Fill(ds);
                    return ds.Tables[0];
                }
            }
            catch (Exception ex)
            { 
                throw ex;
            } 
        }


        public int ExecutionSql(List<string> sqlList,List<SqlParameter[]> listSqlParmeter)
        {
            if (sqlList.Count == 0)
                return 0;
            SqlConnection conn = GetConnection();
            SqlTransaction st = null;
            try
            {
                conn.Open();
                st = conn.BeginTransaction();
                SqlCommand cmd = new SqlCommand();
                cmd.Transaction = st;
                int count = 0;
                cmd.Connection = conn;
                for (int i = 0; i < sqlList.Count; i++)
                {
                    cmd.CommandText = sqlList[i];
                    cmd.Parameters.AddRange(listSqlParmeter[i]);
                    count += cmd.ExecuteNonQuery();
                }
                st.Commit();
                return count;
            }
            catch (Exception ex)
            {
                st.Rollback();
                return 0;
            }
            finally
            {
                conn.Close();
            }
        }
    }
}
