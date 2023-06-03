<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="Chapter.aspx.cs" Inherits="NhatTrongManga.Chapter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style8" style="font-size: x-large; color: #000000; background-color: #FFFFFF;">
        DỮ LIỆU CHAPTER</p>
    <p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/ThemChapter.aspx">Thêm chapter</asp:HyperLink>
    </p>
    <p>
        <div class="text-center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style9" DataKeyNames="MaChap" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="MaChap" HeaderText="Mã Chapter" ReadOnly="True" SortExpression="MaChap" />
                <asp:BoundField DataField="TenChap" HeaderText="Tên Chapter" SortExpression="TenChap" />
                <asp:BoundField DataField="LuotXem" HeaderText="Lượt xem" SortExpression="LuotXem" />
                <asp:BoundField DataField="MaTruyen" HeaderText="Mã truyện" SortExpression="MaTruyen" />
                <asp:BoundField DataField="ThoiGianTao" HeaderText="Thời gian tạo" SortExpression="ThoiGianTao" />
                <asp:BoundField DataField="ThoiGianUpdate" HeaderText="Thời gian update" SortExpression="ThoiGianUpdate" />
                <asp:BoundField DataField="GhiChu" HeaderText="Ghi chú" SortExpression="GhiChu" />
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:Button ID="Button3" runat="server" CommandName="Update" Text="Cập nhật" />
                        <asp:Button ID="Button4" runat="server" CommandName="Cancel" Text="Hủy bỏ" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CommandName="Edit" Text="Sửa" />
                        <asp:Button ID="Button2" runat="server" CommandName="Delete" Text="Xóa" />
                    </ItemTemplate>
                </asp:TemplateField>
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
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NhatTrongManga %>" DeleteCommand="delete from Chapter where MaChap = @MaChap" SelectCommand="SELECT * FROM [Chapter]" UpdateCommand="update Chapter set TenChap = @TenChap, LuotXem = @LuotXem, MaTruyen = @MaTruyen, ThoiGianTao = @ThoiGianTao, ThoiGianUpdate = @ThoiGianUpdate, GhiChu = @GhiChu where MaChap = @MaChap">
            <DeleteParameters>
                <asp:Parameter Name="MaChap" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenChap" />
                <asp:Parameter Name="LuotXem" />
                <asp:Parameter Name="MaTruyen" />
                <asp:Parameter Name="ThoiGianTao" />
                <asp:Parameter Name="ThoiGianUpdate" />
                <asp:Parameter Name="GhiChu" />
                <asp:Parameter Name="MaChap" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
