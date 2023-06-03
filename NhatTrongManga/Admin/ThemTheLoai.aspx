<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="ThemTheLoai.aspx.cs" Inherits="NhatTrongManga.ThemTheLoai" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10" style="width: 1549px">
        <tr>
            <td class="auto-style6" style="color: #FFFFFF; height: 25px; font-size: x-large;" colspan="3"><strong>THÊM THỂ LOẠI</strong></td>
        </tr>
        <tr>
            <td class="auto-style5" style="width: 422px; color: #FFFFFF;"><strong>Tên Thể loại</strong></td>
            <td class="fa-inverse" style="width: 10px; background-color: #333333;">&nbsp;</td>
            <td style="width: 759px; background-color: #333333;">
                <asp:TextBox ID="txtTenTL" runat="server" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenTL" ErrorMessage="Vui lòng nhập tên Thể loại!" CssClass="fa-inverse" style="color: #CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="width: 422px; color: #FFFFFF;"><strong>Mô tả</strong></td>
            <td class="fa-inverse" style="width: 10px; background-color: #333333;">&nbsp;</td>
            <td style="width: 759px; background-color: #333333;">
                <asp:TextBox ID="txtMT" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9" style="width: 422px">&nbsp;</td>
            <td class="auto-style11" style="width: 10px; background-color: #333333;">&nbsp;</td>
            <td style="width: 759px; background-color: #333333;"><strong>
                <asp:Button ID="btnThem" runat="server" CssClass="btn btn-outline-info" Text="Thêm" OnClick="btnThem_Click" style="font-weight: bold;" />
                <asp:Button ID="btnQuaylai" runat="server" CssClass="btn btn-outline-info" PostBackUrl="~/Admin/TheLoai.aspx" Text="Quay lại" style="font-weight: bold;" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
