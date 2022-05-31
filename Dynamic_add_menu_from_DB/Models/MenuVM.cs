using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Dynamic_add_menu_from_DB.Models
{
    public class MenuVM
    {
        public List<Menu> GEtdb()
        {
            List<Menu> DBase = new List<Menu>();

            string connstring = ConfigurationManager.ConnectionStrings["dbx"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connstring))
            {
                SqlCommand cmd = new SqlCommand("select * from menus", conn);
                
                    conn.Open();

                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        Menu emp = new Menu();
                        emp.menu_id = Convert.ToInt16(reader["menu_id"]);
                        emp.menu_name = reader["menu_name"].ToString();
                        emp.menu_parent_id = reader["menu_parent_id"] != DBNull.Value ? Convert.ToInt32(reader["menu_parent_id"]) :(int?)null;
                        DBase.Add(emp);

                    }
                }

            return DBase;
        }
    }
}