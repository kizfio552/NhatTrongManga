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
    public partial class XemChiTiet : System.Web.UI.Page
    {
        static string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\NhatTrongManga.mdf;Integrated Security=True;Connect Timeout=30";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["ID"]);

                SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\NhatTrongManga.mdf;Integrated Security=True;Connect Timeout=30");
                string insertStr = "UPDATE Truyen SET LuotXem = LuotXem + 1 WHERE MaTruyen = " + id;
                SqlCommand cmd = new SqlCommand(insertStr, con);
                using (con)
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                }

                SqlDataAdapter da = new SqlDataAdapter("select * from Truyen where MaTruyen = " + id, strCon);
                DataTable table = new DataTable();
                da.Fill(table);
                GridView1.DataSource = table;
                GridView1.DataBind();
                Image1.ImageUrl = "AnhBia/" + GridView1.Rows[0].Cells[6].Text;
                lblTenTruyen.Text = GridView1.Rows[0].Cells[1].Text;                
                lblTinhTrang.Text = GridView1.Rows[0].Cells[5].Text;
                lblMoTa.Text = GridView1.Rows[0].Cells[2].Text;
                lblLuotXem.Text = GridView1.Rows[0].Cells[3].Text;
                lblLuotThich.Text = GridView1.Rows[0].Cells[4].Text;

                SqlDataAdapter da3 = new SqlDataAdapter("select TenTG from TacGia TG join Truyen_TG TTG on TG.MaTG = TTG.MaTG where MaTruyen = " + id, strCon);
                DataTable table3 = new DataTable();
                da3.Fill(table3);
                GridView1.DataSource = table3;
                GridView1.DataBind();
                lblTacGia.Text = GridView1.Rows[0].Cells[0].Text;

                SqlDataAdapter da2 = new SqlDataAdapter("select * from Chapter where MaTruyen = " + id, strCon);
                DataTable table2 = new DataTable();
                da2.Fill(table2);
                DataList1.DataSource = table2;
                DataList1.DataBind();
            }
        }

        protected void btnThich_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID"]);
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\NhatTrongManga.mdf;Integrated Security=True;Connect Timeout=30");
            string insertStr = "UPDATE Truyen SET LuotThich = LuotThich + 1 WHERE MaTruyen = " + id;
            SqlCommand cmd = new SqlCommand(insertStr, con);
            using (con)
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            btnThich.Enabled = false;
        }
    }
}