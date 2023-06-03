<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="TimTheLoai.aspx.cs" Inherits="NhatTrongManga.TheLoai" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style1" style="width: 266px; height: 55px; background-color: #333333;"></td>
            <td style="height: 55px; background-color: #333333; width: 813px; font-size: x-large;" class="text-start">
                <i style="color:aqua" class="fab fa-font-awesome-flag"></i> <asp:Label ID="lblTheLoai" runat="server" CssClass="fa-inverse" style="color: #00FFFF" Text="Truyện"></asp:Label>
            </td>
            <td style="height: 55px; background-color: #333333;"></td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 266px; height: 386px; background-color: #333333;"></td>
            <td style="text-align: center; height: 386px; background-color: #333333; width: 813px;">
                <asp:DataList ID="DataList1" runat="server" CellPadding="50" CellSpacing="50" RepeatColumns="5" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl='<%# "AnhBia/" + Eval("AnhBia") %>' Width="200px" />
                        <br />
                        <asp:HyperLink CssClass="text-decoration-none link-light" ID="HyperLink1" runat="server" NavigateUrl='<%# "XemChiTiet.aspx?ID=" + Eval("MaTruyen") %>' Text='<%# Eval("TenTruyen") %>'></asp:HyperLink>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td style="height: 386px; background-color: #333333;"></td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 266px; height: 26px; background-color: #333333;"></td>
            <td style="height: 26px; background-color: #333333; width: 813px;">
                <asp:Label ID="lblKQ" runat="server" Text="Không tìm thấy kết quả" Visible="False" CssClass="fa-inverse"></asp:Label>
            </td>
            <td style="height: 26px; background-color: #333333;"></td>
        </tr>
    </table>
</asp:Content>
