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
    public partial class ThemNguoiDung : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\NhatTrongManga.mdf;Integrated Security=True;Connect Timeout=30");
            string insertStr = "INSERT INTO NguoiDung VALUES (@MaND, @TenHienThi, @MatKhau, @PhanQuyen)";
            SqlCommand cmd = new SqlCommand(insertStr, con);
            cmd.Parameters.AddWithValue("@MaND", txtTK.Text);
            cmd.Parameters.AddWithValue("@TenHienThi", txtTHT.Text);
            cmd.Parameters.AddWithValue("@MatKhau", txtMK.Text);
            cmd.Parameters.AddWithValue("@PhanQuyen", txtPQ.Text);
            using (con)
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Đã thêm Người dùng mới thành công!');", true);
            txtTK.Focus();
        }
    }
}