<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="ThemTruyen_TL.aspx.cs" Inherits="NhatTrongManga.ThemTruyen_TL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10" style="width: 1564px">
        <tr>
            <td class="auto-style6" style="height: 29px; color: #FFFFFF; font-size: x-large;" colspan="3"><strong>THÊM THỂ LOẠI CHO TRUYỆN</strong></td>
        </tr>
        <tr>
            <td class="auto-style5" style="height: 29px; width: 422px; color: #FFFFFF;"><strong>Mã truyện</strong></td>
            <td class="auto-style11" style="width: 10px; height: 29px; background-color: #333333;"></td>
            <td style="width: 759px; height: 29px; background-color: #333333;">
                <asp:DropDownList ID="ddlMaTruyen" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="height: 29px; width: 422px; color: #FFFFFF;"><strong>Mã thể loại</strong></td>
            <td class="fa-inverse" style="width: 10px; height: 29px; background-color: #333333;">&nbsp;</td>
            <td style="width: 759px; height: 29px; background-color: #333333;">
                <asp:DropDownList ID="ddlMaTL" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="width: 422px; color: #FFFFFF;"><strong>Ghi chú</strong></td>
            <td class="fa-inverse" style="width: 10px; background-color: #333333;">&nbsp;</td>
            <td style="width: 759px; background-color: #333333;">
                <asp:TextBox ID="txtGhiChu" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9" style="width: 422px; height: 25px;"></td>
            <td class="fa-inverse" style="width: 10px; height: 25px; background-color: #333333;"></td>
            <td style="width: 759px; height: 25px; background-color: #333333;"><strong>
                <asp:Button ID="btnThem" runat="server" CssClass="btn btn-outline-info" Text="Thêm" OnClick="btnThem_Click" style="font-weight: bold;" />
                <asp:Button ID="btnQuaylai" runat="server" CssClass="btn btn-outline-info" PostBackUrl="~/Admin/Truyen_TL.aspx" Text="Quay lại" style="font-weight: bold;" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
