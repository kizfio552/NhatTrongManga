<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="TimKiem.aspx.cs" Inherits="NhatTrongManga.TimKiem" EnableEventValidation="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="width: 210px; background-color: #333333;">&nbsp;</td>
            <td style="width: 676px; text-align: left; padding-top:10px" class="auto-style6">
                <i style="color:aqua" class="fab fa-font-awesome-flag"></i> <asp:Label ID="llblTim" runat="server" style="color: #00FFFF" Text="Kết quả tìm kiếm"></asp:Label>
            </td>
            <td style="background-color: #333333">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 210px; background-color: #333333;">&nbsp;</td>
            <td style="width: 676px" class="auto-style6">
                <asp:DataList ID="DataList1" runat="server" CellPadding="50" RepeatColumns="5" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl='<%# "AnhBia/" + Eval("AnhBia") %>' Width="200px" />
                        <br />
                        <asp:HyperLink CssClass="text-decoration-none link-light" ID="HyperLink1" runat="server" NavigateUrl='<%# "XemChiTiet.aspx?ID=" + Eval("MaTruyen") %>' Text='<%# Eval("TenTruyen") %>'></asp:HyperLink>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td style="background-color: #333333">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 210px; background-color: #333333;">&nbsp;</td>
            <td style="width: 676px; background-color: #333333;">
                <asp:Label ID="lblKQ" runat="server" Text="Không tìm thấy kết quả" Visible="False" CssClass="fa-inverse"></asp:Label>
            </td>
            <td style="background-color: #333333">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
