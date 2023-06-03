<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="NhatTrongManga.TrangChu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%; border-collapse:collapse">
    <tr>           
        <td style="width: 185px; height: 37px; background-color: #333333;"></td>
        <td style="text-align: left; width: 864px; font-size: x-large; color: #CC3300; height: 37px; background-color: #333333; padding-top:10px;">
           <i style="color:red" class="fas fa-star"></i> <strong>Truyện Hot</strong></td>
        <td style="height: 37px; background-color: #333333;"></td>
    </tr>
    <tr>
        <td style="width: 185px; background-color: #333333;">&nbsp;</td>
        <td style="width: 864px; font-size: x-large; color: #CC3300; " class="auto-style6">
            <asp:DataList ID="DataList2" runat="server" RepeatColumns="5" RepeatDirection="Horizontal" style="margin-left: 0px; font-size: medium; margin-right: 0px;" CellPadding="50">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "AnhBia/" + Eval("AnhBia") %>' Height="300px" Width="200px" />
                    <br />
                    <asp:HyperLink CssClass="link-light text-decoration-none" ID="HyperLink1" runat="server" NavigateUrl='<%# "XemChiTiet.aspx?ID=" + Eval("MaTruyen") %>' Text='<%# Eval("TenTruyen") %>' Width="200px"></asp:HyperLink>
                </ItemTemplate>
            </asp:DataList>
        </td>
        <td style="background-color: #333333">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 185px; background-color: #333333;">&nbsp;</td>
        <td style="text-align: left; width: 864px; font-size: x-large; background-color: #333333; font-weight: normal;" class="fa-inverse">
            <strong>
            <i class="fas fa-cloud-download"></i> <asp:Label ID="Label1" runat="server" Text="Truyện mới cập nhật"></asp:Label>
            </strong></td>
        <td style="background-color: #333333">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 185px; background-color: #333333;">&nbsp;</td>
        <td style="text-align: center; width: 864px; background-color: #333333;">
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" RepeatDirection="Horizontal" style="margin-left: 0px" CellPadding="50">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "AnhBia/" + Eval("AnhBia") %>' Height="300px" Width="200px" />
                    <br />
                    <asp:HyperLink CssClass="link-light text-decoration-none" ID="HyperLink1" runat="server" NavigateUrl='<%# "XemChiTiet.aspx?ID=" + Eval("MaTruyen") %>' Text='<%# Eval("TenTruyen") %>' Width="200px"></asp:HyperLink>
                </ItemTemplate>
            </asp:DataList>
        </td>
        <td style="background-color: #333333">&nbsp;</td>
    </tr>
    </table>
    </asp:Content>