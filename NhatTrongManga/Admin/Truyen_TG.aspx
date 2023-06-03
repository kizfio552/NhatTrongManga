<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="Truyen_TG.aspx.cs" Inherits="NhatTrongManga.Truyen_TG" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style8" style="font-size: x-large; color: #000000; background-color: #FFFFFF;">
        DỮ LIỆU TRUYỆN - TÁC GIẢ</p>
    <p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/ThemTruyen_TG.aspx">Thêm truyện - tác giả</asp:HyperLink>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style9" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="MaTruyen" HeaderText="Mã truyện" SortExpression="MaTruyen" />
                <asp:BoundField DataField="MaTG" HeaderText="Mã tác giả" SortExpression="MaTG" />
                <asp:BoundField DataField="GhiChu" HeaderText="Ghi chú" SortExpression="GhiChu" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NhatTrongManga %>" SelectCommand="SELECT * FROM [Truyen_TG]"></asp:SqlDataSource>
    </p>
</asp:Content>
