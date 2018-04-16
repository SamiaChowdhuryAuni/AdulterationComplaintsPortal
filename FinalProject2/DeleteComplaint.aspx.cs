using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;


namespace FinalProject2
{
    public partial class DeleteComplaint : System.Web.UI.Page
    {
        DataOperation db = new DataOperation();
        User user = new FinalProject2.User();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("FirstPage.aspx");
            }
           

        }

        protected void delete_Click(object sender, EventArgs e)
        {
            int cid = int.Parse(Request.QueryString["ComplaintID"]);
            string message = msg.Text;
            SqlConnection con = new SqlConnection(db.connectstr);
            con.Open();
            string query3 = "select ID from UserComplaints where ComplaintID='"+cid+"'";
            SqlCommand cmd3 = new SqlCommand(query3, con);
            int uid = (int)cmd3.ExecuteScalar();
            string query = "insert into AdminMessages (ComplaintID,ID,Message) Values ('" + cid + "','" + uid + "','" + message + "')";
            string query2 = "delete from UserComplaints where ComplaintID='" + cid + "'";
            
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            SqlCommand cmd2 = new SqlCommand(query2, con);
            cmd2.ExecuteNonQuery();
            con.Close();

            Response.Redirect("managecomplaints.aspx");

        }
    }
}