<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="NguoiDung.aspx.cs" Inherits="NhatTrongManga.NguoiDung" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style8" style="font-size: x-large; color: #000000; background-color: #FFFFFF;">
        DỮ LIỆU NGƯỜI DÙNG</p>
    <p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/ThemNguoiDung.aspx">Thêm người dùng</asp:HyperLink>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style9" DataKeyNames="MaND" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="MaND" HeaderText="Tài khoản" ReadOnly="True" SortExpression="MaND" />
                <asp:BoundField DataField="TenHienThi" HeaderText="Tên hiển thị" SortExpression="TenHienThi" />
                <asp:BoundField DataField="MatKhau" HeaderText="Mật khẩu" SortExpression="MatKhau" />
                <asp:CheckBoxField DataField="PhanQuyen" HeaderText="Phân quyền" SortExpression="PhanQuyen" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NhatTrongManga %>" DeleteCommand="delete from NguoiDung where MaND = @MaND" SelectCommand="SELECT * FROM [NguoiDung]" UpdateCommand="update NguoiDung set TenHienThi = @TenHienThi, MatKhau = @MatKhau, PhanQuyen = @PhanQuyen where MaND = @MaND">
            <DeleteParameters>
                <asp:Parameter Name="MaND" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenHienThi" />
                <asp:Parameter Name="MatKhau" />
                <asp:Parameter Name="PhanQuyen" />
                <asp:Parameter Name="MaND" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
