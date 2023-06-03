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
    public partial class DocTruyen : System.Web.UI.Page
    {
        static string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\NhatTrongManga.mdf;Integrated Security=True;Connect Timeout=30";
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID"]);
            int key = Convert.ToInt32(Request.QueryString["key"]);

            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\NhatTrongManga.mdf;Integrated Security=True;Connect Timeout=30");
            string insertStr = "UPDATE Chapter SET LuotXem = LuotXem + 1 WHERE MaChap = " + id;
            SqlCommand cmd = new SqlCommand(insertStr, con);
            using (con)
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }

            SqlDataAdapter da = new SqlDataAdapter("select TenTruyen, TenChap, Chapter.ThoiGianUpdate from Truyen, Chapter where Truyen.MaTruyen = Chapter.MaTruyen and MaChap = " + id, strCon);
            DataTable table = new DataTable();
            da.Fill(table);
            GridView1.DataSource = table;
            GridView1.DataBind();
            lblTenTruyen.Text = GridView1.Rows[0].Cells[0].Text + " - ";
            lblTenChap.Text = GridView1.Rows[0].Cells[1].Text;
            lblUpdate.Text = " (Cập nhật lúc: " + GridView1.Rows[0].Cells[2].Text + ")";

            SqlDataAdapter da2 = new SqlDataAdapter("select HinhAnh from HinhAnhChap where MaChap = " + id, strCon);
            DataTable table2 = new DataTable();
            da2.Fill(table2);
            DataList1.DataSource = table2;
            DataList1.DataBind();

            SqlDataAdapter da3 = new SqlDataAdapter("select prev_word, t.MaChap, next_word, MaTruyen " +
                " from(select MaTruyen, lag(MaChap) over(order by MaTruyen) as prev_word, MaChap, lead(MaChap) over(order by MaTruyen) as next_word " +
                " from Chapter " +
                " where MaTruyen = " + key + ") as t " +
                " where MaTruyen = " + key + " AND t.MaChap = " + id, strCon);
            DataTable table3 = new DataTable();
            da3.Fill(table3);
            DataList2.DataSource = table3;
            DataList2.DataBind();
            DataList3.DataSource = table3;
            DataList3.DataBind();
        }

        /*protected void btnChapTrc_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID"]);
            int key = Convert.ToInt32(Request.QueryString["key"]);
            SqlDataAdapter da = new SqlDataAdapter("select prev_word, hac.HinhAnh" +
                " from (select MaTruyen, lag(MaChap) over (order by MaTruyen) as prev_word, MaChap" +
                " from Chapter) as t join HinhAnhChap hac on t.prev_word = hac.MaChap" +
                " where MaTruyen = " + key + " AND t.MaChap = " + id, strCon);
            DataTable table = new DataTable();
            da.Fill(table);
            GridView1.DataSource = table;
            GridView1.DataBind();
            id = Convert.ToInt32(GridView1.Rows[0].Cells[0].Text);
            btnChapTrc.PostBackUrl = "DocTruyen.aspx?ID=" + id + "&key=" + key;
            //DataList1.DataSource = table;
            //DataList1.DataBind();
        }

        protected void btnChapSau_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID"]);
            int key = Convert.ToInt32(Request.QueryString["key"]);
            SqlDataAdapter da = new SqlDataAdapter("select next_word, hac.HinhAnh" +
                " from(select MaTruyen, MaChap, lead(MaChap) over(order by MaTruyen) as next_word" +
                " from Chapter) as t join HinhAnhChap hac on t.next_word = hac.MaChap" +
                " where MaTruyen = " + key + " AND t.MaChap = " + id, strCon);
            DataTable table = new DataTable();
            da.Fill(table);
            GridView1.DataSource = table;
            GridView1.DataBind();
            id = Convert.ToInt32(GridView1.Rows[0].Cells[0].Text);
            btnChapSau.PostBackUrl = "DocTruyen.aspx?ID=" + id + "&key=" + key;
            //DataList1.DataSource = table;
            //DataList1.DataBind();
        }*/
    }
}