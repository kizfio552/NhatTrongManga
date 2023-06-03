<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="ThemTheoDoi.aspx.cs" Inherits="NhatTrongManga.ThemTheoDoi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10" style="width: 1608px">
        <tr>
            <td class="auto-style6" style="color: #FFFFFF; font-size: x-large;" colspan="3"><strong>THÊM THEO DÕI</strong></td>
        </tr>
        <tr>
            <td class="auto-style5" style="width: 422px; color: #FFFFFF;"><strong>Mã Người dùng</strong></td>
            <td class="fa-inverse" style="width: 10px; background-color: #333333;">&nbsp;</td>
            <td style="width: 759px; background-color: #333333;">
                <strong>
                <asp:TextBox ID="txtMaND" runat="server" Width="250px"></asp:TextBox>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="width: 422px; color: #FFFFFF;"><strong>Mã Truyện</strong></td>
            <td class="fa-inverse" style="width: 10px; background-color: #333333;">&nbsp;</td>
            <td style="width: 759px; background-color: #333333;">
                <strong>
                <asp:DropDownList ID="ddlMaTruyen" runat="server">
                </asp:DropDownList>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="width: 422px; color: #FFFFFF;"><span class="fa-inverse"><strong>G</strong></span><span style="font-weight: 800" class="fa-inverse"><strong>hi chú</strong></span></td>
            <td class="fa-inverse" style="width: 10px; background-color: #333333;">&nbsp;</td>
            <td style="width: 759px; background-color: #333333;">
                <strong>
                <asp:TextBox ID="txtGhiChu" runat="server" Width="250px"></asp:TextBox>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style9" style="width: 422px">&nbsp;</td>
            <td class="auto-style11" style="width: 10px; background-color: #333333;">&nbsp;</td>
            <td style="width: 759px; background-color: #333333;"><strong>
                <asp:Button ID="btnThem" runat="server" CssClass="btn btn-outline-info" Text="Thêm" OnClick="btnThem_Click" style="font-weight: bold;" />
                <asp:Button ID="btnQuaylai" runat="server" CssClass="btn btn-outline-info" PostBackUrl="~/Admin/TheoDoi.aspx" Text="Quay lại" style="font-weight: bold;" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
