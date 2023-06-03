<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="Truyen.aspx.cs" Inherits="NhatTrongManga.Truyen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style8" style="font-size: x-large; color: #000000; background-color: #FFFFFF;">
        DỮ LIỆU TRUYỆN</p>
    <p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/ThemTruyen.aspx">Thêm truyện</asp:HyperLink>
    </p>
    <p>
        <div class="text-start">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style9" DataKeyNames="MaTruyen" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="MaTruyen" HeaderText="Mã truyện" ReadOnly="True" SortExpression="MaTruyen" />
                <asp:BoundField DataField="TenTruyen" HeaderText="Tên truyện" SortExpression="TenTruyen" />
                <asp:BoundField DataField="MoTa" HeaderText="Mô tả" SortExpression="MoTa" />
                <asp:BoundField DataField="LuotXem" HeaderText="Lượt xem" SortExpression="LuotXem" />
                <asp:BoundField DataField="LuotThich" HeaderText="Lượt thích" SortExpression="LuotThich" />
                <asp:BoundField DataField="TrangThai" HeaderText="Trạng thái" SortExpression="TrangThai" />
                <asp:BoundField DataField="AnhBia" HeaderText="Ảnh bìa" SortExpression="AnhBia" />
                <asp:BoundField DataField="ThoiGianTao" HeaderText="Thời gian tạo" SortExpression="ThoiGianTao" />
                <asp:BoundField DataField="ThoiGianUpdate" HeaderText="Thời gian update" SortExpression="ThoiGianUpdate" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NhatTrongManga %>" DeleteCommand="delete from Truyen where MaTruyen = @MaTruyen" SelectCommand="SELECT * FROM [Truyen]" UpdateCommand="update Truyen set TenTruyen = @TenTruyen, MoTa = @MoTa, LuotXem = @LuotXem, LuotThich = @LuotThich, TrangThai = @TrangThai, AnhBia = @AnhBia, ThoiGianTao = @ThoiGianTao, ThoiGianUpdate = @ThoiGianUpdate where MaTruyen = @MaTruyen">
            <DeleteParameters>
                <asp:Parameter Name="MaTruyen" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenTruyen" />
                <asp:Parameter Name="MoTa" />
                <asp:Parameter Name="LuotXem" />
                <asp:Parameter Name="LuotThich" />
                <asp:Parameter Name="TrangThai" />
                <asp:Parameter Name="AnhBia" />
                <asp:Parameter Name="ThoiGianTao" />
                <asp:Parameter Name="ThoiGianUpdate" />
                <asp:Parameter Name="MaTruyen" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
