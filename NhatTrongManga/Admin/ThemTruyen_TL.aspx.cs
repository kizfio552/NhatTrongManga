﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

namespace NhatTrongManga
{
    public partial class ThemTruyen_TL : System.Web.UI.Page
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

                SqlDataAdapter da2 = new SqlDataAdapter("SELECT MaTL, TenTL FROM TheLoai", strCon);
                DataTable table2 = new DataTable();
                da2.Fill(table2);
                ListItem item2;
                foreach (DataRow r2 in table2.Rows)
                {
                    item2 = new ListItem();
                    item2.Text = r2["MaTL"] + ". " + r2["TenTL"];
                    item2.Value = r2["MaTL"].ToString();
                    ddlMaTL.Items.Add(item2);
                }
            }
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\NhatTrongManga.mdf;Integrated Security=True;Connect Timeout=30");
            string insertStr = "INSERT INTO Truyen_TL VALUES (@MaTruyen, @MaTL, @GhiChu)";
            SqlCommand cmd = new SqlCommand(insertStr, con);
            cmd.Parameters.AddWithValue("@MaTruyen", ddlMaTruyen.SelectedValue);
            cmd.Parameters.AddWithValue("@MaTL", ddlMaTL.SelectedValue);
            cmd.Parameters.AddWithValue("@GhiChu", txtGhiChu.Text);
            using (con)
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Đã thêm quan hệ Truyện - Thể loại mới thành công!');", true);
        }
    }
}