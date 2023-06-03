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
    public partial class TimKiem : System.Web.UI.Page
    {
        static string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\NhatTrongManga.mdf;Integrated Security=True;Connect Timeout=30";
        protected void Page_Load(object sender, EventArgs e)
        {
                TextBox txtTim = (TextBox)Page.Master.FindControl("txtTimKiem");
                string key = txtTim.Text.ToLower();
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
                        SqlDataAdapter da = new SqlDataAdapter("select Truyen.MaTruyen, TenTruyen, AnhBia from Truyen join KeywordTruyen KT on Truyen.MaTruyen = KT.MaTruyen " +
                            " where Keyword like '%" + key + "%' group by Truyen.MaTruyen, TenTruyen, AnhBia", strCon);
                        DataTable table = new DataTable();
                        da.Fill(table);
                        DataList1.DataSource = table;
                        DataList1.DataBind();
                    }
                }            
        }
    }
}