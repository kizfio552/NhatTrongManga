<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="ThemTruyen.aspx.cs" Inherits="NhatTrongManga.ThemTruyen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10" style="width: 1567px">
        <tr>
            <td class="auto-style6" style="color: #FFFFFF; font-size: x-large;" colspan="3"><strong>THÊM TRUYỆN</strong></td>
        </tr>
        <tr>
            <td class="auto-style5" style="width: 422px; color: #FFFFFF;"><strong>Tên Truyện</strong></td>
            <td class="fa-inverse" style="width: 10px; background-color: #333333;">&nbsp;</td>
            <td style="width: 759px; background-color: #333333;">
                <asp:TextBox ID="txtTenTruyen" runat="server" Width="400px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenTruyen" ErrorMessage="Vui lòng nhập tên Truyện!" CssClass="fa-inverse" style="color: #CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="width: 422px; color: #FFFFFF;"><strong>Mô tả</strong></td>
            <td class="fa-inverse" style="width: 10px; background-color: #333333;">&nbsp;</td>
            <td style="width: 759px; background-color: #333333;">
                <asp:TextBox ID="txtMT" runat="server" Width="400px" TextMode="MultiLine" CssClass="fa-inverse" style="color: #000000"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="height: 29px; width: 422px; color: #FFFFFF;"><strong>Trạng thái</strong></td>
            <td class="auto-style11" style="width: 10px; height: 29px; background-color: #333333;"></td>
            <td style="width: 759px; height: 29px; background-color: #333333;">
                <asp:TextBox ID="txtTT" runat="server" Width="400px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTT" ErrorMessage="Vui lòng nhập trạng thái!" CssClass="fa-inverse" style="color: #CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="width: 422px; color: #FFFFFF;"><strong>Ảnh bìa</strong></td>
            <td class="fa-inverse" style="width: 10px; background-color: #333333;">&nbsp;</td>
            <td style="width: 759px; background-color: #333333;">
                <asp:TextBox ID="txtAnhBia" runat="server" Width="400px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAnhBia" ErrorMessage="Vui lòng nhập tên ảnh!" CssClass="fa-inverse" style="color: #CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9" style="width: 422px">&nbsp;</td>
            <td class="fa-inverse" style="width: 10px; background-color: #333333;">&nbsp;</td>
            <td style="width: 759px; background-color: #333333;"><strong>
                <asp:Button ID="btnThem" runat="server" CssClass="btn btn-outline-info" Text="Thêm" OnClick="btnThem_Click" style="font-weight: bold;" />
                <asp:Button ID="btnQuaylai" runat="server" CssClass="btn btn-outline-info" PostBackUrl="~/Admin/Truyen.aspx" Text="Quay lại" style="font-weight: bold;" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
