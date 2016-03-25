using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data.SqlClient;

public partial class createUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }
    protected void cmdWrite_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["connStr_User"].ConnectionString;

        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;

        cmd.CommandText = "SELECT * FROM [tUsers] WHERE [username] = '" + txtUName.Text + "'";
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            dr.Close();
            conn.Close();
            lblError.Text = "This username exists... Enter a new username!";
        }
        else
        {
            dr.Close();
            cmd.CommandText = "INSERT INTO [tUsers] ([username],[password]) VALUES ('" + txtUName.Text + "','" + txtPassword.Text + "')";
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("showUser.aspx");
        }
    }
}