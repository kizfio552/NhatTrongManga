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
    public partial class ThemHinhAnhChapter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\NhatTrongManga.mdf;Integrated Security=True;Connect Timeout=30";
                SqlDataAdapter da = new SqlDataAdapter("SELECT MaChap, TenChap, TenTruyen FROM Chapter join Truyen on Chapter.MaTruyen = Truyen.MaTruyen", strCon);
                DataTable table = new DataTable();
                da.Fill(table);
                ListItem item;
                foreach (DataRow r in table.Rows)
                {
                    item = new ListItem();
                    item.Text = r["MaChap"] + ". " + r["TenChap"] + " - " + r["TenTruyen"];
                    item.Value = r["MaChap"].ToString();
                    ddlMaChapter.Items.Add(item);
                }
            }
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\NhatTrongManga.mdf;Integrated Security=True;Connect Timeout=30");           
            string insertStr = "INSERT INTO HinhAnhChap VALUES (@MaChap, @HinhAnh, @GhiChu)";
            SqlCommand cmd = new SqlCommand(insertStr, con);
            cmd.Parameters.AddWithValue("@MaChap", ddlMaChapter.SelectedValue);
            cmd.Parameters.AddWithValue("@HinhAnh", txtHinhAnh.Text);
            cmd.Parameters.AddWithValue("@GhiChu", txtGhiChu.Text);
            using (con)
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Đã thêm 1 hình ảnh mới cho Chapter thành công!');", true);
            txtHinhAnh.Focus();
        }
    }
}