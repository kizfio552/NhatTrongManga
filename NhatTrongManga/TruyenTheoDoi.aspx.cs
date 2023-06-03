using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

namespace NhatTrongManga
{
    public partial class TheoDoi : System.Web.UI.Page
    {
        //static string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\NhatTrongManga.mdf;Integrated Security=True;Connect Timeout=30";
        protected void Page_Load(object sender, EventArgs e)
        {
            /*SqlDataAdapter da = new SqlDataAdapter("select * from Truyen", strCon);
            DataTable table = new DataTable();
            da.Fill(table);
            DataList1.DataSource = table;
            DataList1.DataBind();

            if (DataList1 == null)
            {
                lblKQ.Visible = true;
            } else
            {
                lblKQ.Visible = false;
            }*/
        }
    }
}