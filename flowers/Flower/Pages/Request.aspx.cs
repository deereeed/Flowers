﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Flower
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=DELL-PC;Initial Catalog=Flower_DB;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                TelPol.Attributes.Add("onkeypress", "return numeralsOnly(event)");
                TelZak.Attributes.Add("onkeypress", "return numeralsOnly(event)");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    UserList.Text = "";
                    string id;
                    int money;
                    string command = "select count(*)from Request";

                    SqlCommand select = new SqlCommand(command, connection);
                    id = select.ExecuteScalar().ToString();
                    command = "select price from Flowers where id=" + Type.Text;
                    select = new SqlCommand(command, connection);
                    money =Convert.ToInt32(select.ExecuteScalar());
                
                    
                    int User_ID=1;
                   
                    string insert_users = "INSERT INTO Request VALUES (" + id + ","+ User_ID +","
                      +  Convert.ToDouble(Type.Text) + ",'" + Address.Text + "','" + Convert.ToDateTime(Date_Time.Text) + "'," 
                     + TelZak.Text + "," + TelPol.Text + ",'" + Note.Text+ "',"+money+")";
                                       
                    SqlCommand insert = new SqlCommand(insert_users, connection);


                  
                    if (Type.Text != "" && FIO.Text != "" && Address.Text != "" && Date_Time.Text != null 
                         && TelZak.Text != "" && TelPol.Text != "")
                    {

                        insert.ExecuteNonQuery();
                        UserList.Text = "Заказ оформлен успешно!";
                    }
                    else
                    {
                        UserList.Text = "Заполните все поля, помеченные знаком *";
                    }
                    
                }
                catch (Exception ex)
                {
                    ////
                }

            }


        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            
        }
       
           
        
    }
}