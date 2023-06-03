<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="ThemHinhAnhChapter.aspx.cs" Inherits="NhatTrongManga.ThemHinhAnhChapter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10" style="width: 1507px">
        <tr>
            <td class="auto-style6" style="color: #FFFFFF; font-size: x-large;" colspan="3"><strong>THÊM HÌNH ẢNH CHAPTER</strong></td>
        </tr>
        <tr>
            <td class="auto-style5" style="width: 422px; color: #FFFFFF;"><strong>Hình ảnh</strong></td>
            <td class="fa-inverse" style="width: 10px; background-color: #333333;">&nbsp;</td>
            <td style="width: 759px; background-color: #333333;">
                <asp:TextBox ID="txtHinhAnh" runat="server" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHinhAnh" ErrorMessage="Vui lòng nhập tên hình ảnh!" CssClass="fa-inverse" style="color: #CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="height: 29px; width: 422px; color: #FFFFFF;"><strong>Mã Chapter</strong></td>
            <td class="auto-style11" style="width: 10px; height: 29px; background-color: #333333;"></td>
            <td style="width: 759px; height: 29px; background-color: #333333;">
                <asp:DropDownList ID="ddlMaChapter" runat="server">
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
            <td class="auto-style9" style="width: 422px">&nbsp;</td>
            <td class="auto-style11" style="width: 10px; background-color: #333333;">&nbsp;</td>
            <td style="width: 759px; background-color: #333333;"><strong>
                <asp:Button ID="btnThem" runat="server" CssClass="btn btn-outline-info" Text="Thêm" OnClick="btnThem_Click" style="font-weight: bold;" />
                <asp:Button ID="btnQuaylai" runat="server" CssClass="btn btn-outline-info" PostBackUrl="~/Admin/HinhAnhChap.aspx" Text="Quay lại" style="font-weight: bold;" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
