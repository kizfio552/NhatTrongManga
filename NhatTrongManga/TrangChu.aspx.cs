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
    public partial class TrangChu : System.Web.UI.Page
    {
        static string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\NhatTrongManga.mdf;Integrated Security=True;Connect Timeout=30";
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from Truyen order by ThoiGianUpdate desc", strCon);
            DataTable table = new DataTable();
            da.Fill(table);
            DataList1.DataSource = table;
            DataList1.DataBind();

            SqlDataAdapter da2 = new SqlDataAdapter("select top 5 * from Truyen order by LuotXem desc, LuotThich desc", strCon);
            DataTable table2 = new DataTable();
            da2.Fill(table2);
            DataList2.DataSource = table2;
            DataList2.DataBind();
        }
    }
}