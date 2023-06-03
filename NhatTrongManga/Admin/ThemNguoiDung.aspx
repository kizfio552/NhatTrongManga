<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="ThemNguoiDung.aspx.cs" Inherits="NhatTrongManga.ThemNguoiDung" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10" style="width: 1641px">
        <tr>
            <td class="auto-style6" style="color: #FFFFFF; font-size: x-large;" colspan="3"><strong>THÊM NGƯỜI DÙNG</strong></td>
        </tr>
        <tr>
            <td class="auto-style5" style="width: 422px; color: #FFFFFF;"><strong>Tài khoản</strong></td>
            <td class="fa-inverse" style="width: 10px; background-color: #333333;">&nbsp;</td>
            <td style="width: 759px; background-color: #333333;">
                <asp:TextBox ID="txtTK" runat="server" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTK" ErrorMessage="Vui lòng nhập tài khoản!" CssClass="fa-inverse" style="color: #CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="height: 29px; width: 422px; color: #FFFFFF;"><strong>&nbsp;Tên hiển thị&nbsp;</strong></td>
            <td class="auto-style11" style="width: 10px; height: 29px; background-color: #333333;"></td>
            <td style="width: 759px; height: 29px; background-color: #333333;">
                <asp:TextBox ID="txtTHT" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="width: 422px; color: #FFFFFF;"><strong>Mật khẩu</strong></td>
            <td class="fa-inverse" style="width: 10px; background-color: #333333;">&nbsp;</td>
            <td style="width: 759px; background-color: #333333;">
                <asp:TextBox ID="txtMK" runat="server" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMK" ErrorMessage="Vui lòng nhập mật khẩu!" CssClass="fa-inverse" style="color: #CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="width: 422px; color: #FFFFFF;"><strong>Phân quyền</strong></td>
            <td class="fa-inverse" style="width: 10px; background-color: #333333;">&nbsp;</td>
            <td style="width: 759px; background-color: #333333;">
                <asp:TextBox ID="txtPQ" runat="server" Width="250px" TextMode="Number"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPQ" ErrorMessage="Vui lòng phân quyền (0=User, 1=Admin)!" MaximumValue="1" MinimumValue="0" CssClass="fa-inverse" style="color: #CC3300"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9" style="width: 422px">&nbsp;</td>
            <td class="auto-style11" style="width: 10px; background-color: #333333;">&nbsp;</td>
            <td style="width: 759px; background-color: #333333;"><strong>
                <asp:Button ID="btnThem" runat="server" CssClass="btn btn-outline-info" Text="Thêm" OnClick="btnThem_Click" style="font-weight: bold;" />
                <asp:Button ID="btnQuaylai" runat="server" CssClass="btn btn-outline-info" PostBackUrl="~/Admin/NguoiDung.aspx" Text="Quay lại" style="font-weight: bold;" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
