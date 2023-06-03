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
    public partial class ThemChapter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\NhatTrongManga.mdf;Integrated Security=True;Connect Timeout=30";
                SqlDataAdapter da = new SqlDataAdapter("SELECT MaTruyen, TenTruyen FROM Truyen", strCon);
                DataTable table = new DataTable();
                da.Fill(table);
                ListItem item;
                foreach (DataRow r in table.Rows)
                {
                    item = new ListItem();
                    item.Text = r["MaTruyen"] + ". " + r["TenTruyen"];
                    item.Value = r["MaTruyen"].ToString();
                    ddlMaTruyen.Items.Add(item);
                }
            }
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\NhatTrongManga.mdf;Integrated Security=True;Connect Timeout=30");
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Chapter", con);
            DataTable table = new DataTable();
            da.Fill(table);
            string insertStr = "INSERT INTO Chapter VALUES (@MaChap, @TenChap, @LuotXem, @MaTruyen, @ThoiGianTao, @ThoiGianUpdate, @GhiChu)";
            SqlCommand cmd = new SqlCommand(insertStr, con);
            cmd.Parameters.AddWithValue("@MaChap", table.Rows.Count + 1);
            cmd.Parameters.AddWithValue("@TenChap", txtTenChap.Text);
            cmd.Parameters.AddWithValue("@LuotXem", 0);
            cmd.Parameters.AddWithValue("@MaTruyen", ddlMaTruyen.SelectedValue);
            cmd.Parameters.AddWithValue("@ThoiGianTao", DateTime.Now.ToShortDateString());
            cmd.Parameters.AddWithValue("@ThoiGianUpdate", DateTime.Now.ToShortDateString());
            cmd.Parameters.AddWithValue("@GhiChu", txtGhiChu.Text);
            using (con)
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Đã thêm Chapter mới thành công!');", true);
            txtTenChap.Focus();
        }
    }
}