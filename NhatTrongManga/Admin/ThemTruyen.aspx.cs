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
    public partial class ThemTruyen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\NhatTrongManga.mdf;Integrated Security=True;Connect Timeout=30");
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Truyen", con);
            DataTable table = new DataTable();
            da.Fill(table);
            string insertStr = "INSERT INTO Truyen VALUES (@MaTruyen, @TenTruyen, @MoTa, @LuotXem, @LuotThich, @TrangThai, @AnhBia, @ThoiGianTao, @ThoiGianUpdate)";
            SqlCommand cmd = new SqlCommand(insertStr, con);
            cmd.Parameters.AddWithValue("@MaTruyen", table.Rows.Count + 1);
            cmd.Parameters.AddWithValue("@TenTruyen", txtTenTruyen.Text);
            cmd.Parameters.AddWithValue("@MoTa", txtMT.Text);
            cmd.Parameters.AddWithValue("@LuotXem", 0);
            cmd.Parameters.AddWithValue("@LuotThich", 0);
            cmd.Parameters.AddWithValue("@TrangThai", txtTT.Text);
            cmd.Parameters.AddWithValue("@AnhBia", txtAnhBia.Text);
            cmd.Parameters.AddWithValue("@ThoiGianTao", DateTime.Now.ToShortDateString());
            cmd.Parameters.AddWithValue("@ThoiGianUpdate", DateTime.Now.ToShortDateString());
            using (con)
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Đã thêm Truyện mới thành công!');", true);
            txtTenTruyen.Focus();
        }
    }
}