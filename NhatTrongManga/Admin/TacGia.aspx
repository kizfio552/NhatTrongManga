<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="TacGia.aspx.cs" Inherits="NhatTrongManga.TacGia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style8" style="font-size: x-large; color: #000000; background-color: #FFFFFF;">
        DỮ LIỆU TÁC GIẢ</p>
    <p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/ThemTacGia.aspx">Thêm tác giả</asp:HyperLink>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style9" DataKeyNames="MaTG" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="MaTG" HeaderText="Mã Tác giả" ReadOnly="True" SortExpression="MaTG" />
                <asp:BoundField DataField="TenTG" HeaderText="Tên Tác giả" SortExpression="TenTG" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NhatTrongManga %>" DeleteCommand="delete from TacGia where MaTG = @MaTG" SelectCommand="SELECT * FROM [TacGia]" UpdateCommand="update TacGia set TenTG = @TenTG, GhiChu = @GhiChu where MaTG = @MaTG">
            <DeleteParameters>
                <asp:Parameter Name="MaTG" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenTG" />
                <asp:Parameter Name="GhiChu" />
                <asp:Parameter Name="MaTG" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
