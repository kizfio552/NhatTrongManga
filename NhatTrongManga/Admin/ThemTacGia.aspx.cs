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
    public partial class ThemTacGia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\NhatTrongManga.mdf;Integrated Security=True;Connect Timeout=30");
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM TacGia", con);
            DataTable table = new DataTable();
            da.Fill(table);
            string insertStr = "INSERT INTO TacGia VALUES (@MaTG, @TenTG, @GhiChu)";
            SqlCommand cmd = new SqlCommand(insertStr, con);
            cmd.Parameters.AddWithValue("@MaTG", table.Rows.Count + 1);
            cmd.Parameters.AddWithValue("@TenTG", txtTenTG.Text);
            cmd.Parameters.AddWithValue("@GhiChu", txtGhiChu.Text);
            using (con)
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Đã thêm Tác giả mới thành công!');", true);
            txtTenTG.Focus();
        }
    }
}