using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace queryexecution
{
    public class Class1
    {

        public void insert(string ins_qury)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand(ins_qury, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                con.Close();
                con.Dispose();
                cmd.Dispose();
            }
        }
        public bool getData(string select_qury)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand(select_qury, con);
            try
            {
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                bool reader;
                if (sdr.Read())
                {
                    reader = true;
                }
                else
                {
                    reader = false;
                }
                return reader;
            }
            catch(Exception e)
            {
                throw e;
            }
            finally
            {
                con.Close();
                con.Dispose();
                cmd.Dispose();
            }
        }
    }
}