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
    public partial class TheLoai : System.Web.UI.Page
    {
        static string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\NhatTrongManga.mdf;Integrated Security=True;Connect Timeout=30";
        protected void Page_Load(object sender, EventArgs e)
        {
            string key = Request.QueryString["key"];

            if (string.IsNullOrEmpty(key))
            {
                lblKQ.Visible = true;
            }
            else
            {
                if (key == "")
                    lblKQ.Visible = true;
                else
                {
                    lblKQ.Visible = false;
                    SqlDataAdapter da = new SqlDataAdapter("select T.MaTruyen, TenTruyen, AnhBia from Truyen T join Truyen_TL TTL on T.MaTruyen = TTL.MaTruyen " +
                        "join TheLoai TL on TTL.MaTL = TL.MaTL where TenTL = N'" + key + "' group by T.MaTruyen, TenTruyen, AnhBia", strCon);
                    DataTable table = new DataTable();
                    da.Fill(table);
                    DataList1.DataSource = table;
                    DataList1.DataBind();
                    lblTheLoai.Text = "Truyện " + key;
                }
            }
        }
    }
}