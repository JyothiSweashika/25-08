using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Assignment11
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ContentDbConnectionString"].ToString());
                SqlCommand cmd = new SqlCommand();

                cmd.Connection = con;

                cmd.CommandText = "insert into Articles values (@id, @title, @content, @publishdate)";

                cmd.Parameters.AddWithValue("@id", int.Parse(TxtId.Text));

                cmd.Parameters.AddWithValue("@title", TxtTitle.Text);

                cmd.Parameters.AddWithValue("@content", TxtContent.Text);

                cmd.Parameters.AddWithValue("@publishdate", DateTime.Parse(TxtDate.Text));

                con.Open();

                cmd.ExecuteNonQuery();

                LblMsg.Text = "Registration Success";
            }


            catch (Exception ex)

            {

                LblMsg.Text = "Error" + ex.Message;

            }

        }
    }
}
