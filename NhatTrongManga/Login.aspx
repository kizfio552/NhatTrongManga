<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="NhatTrongManga.DangNhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10" style="width: 1633px">
        <tr>
            <td class="auto-style6" style="color: #FFFFFF; height: 35px; font-size: x-large; width: 568px;">
                &nbsp;</td>
            <td class="auto-style6" style="color: #FFFFFF; height: 35px; font-size: x-large;">
                <asp:Login ID="Login1" runat="server" CreateUserText="Đăng ký" CreateUserUrl="~/DangKy.aspx" FailureText="Đăng nhập thất bại. Vui lòng thử lại!" LoginButtonText="Đăng nhập" PasswordLabelText="Mật khẩu:" PasswordRecoveryText="Quên mật khẩu" PasswordRecoveryUrl="~/QuenMatKhau.aspx" RememberMeText="Lưu tài khoản" TitleText="Đăng nhập" UserNameLabelText="Tài khoản:" DestinationPageUrl="~/TrangChu.aspx" style="margin-left: 0px">
                </asp:Login>
            </td>
        </tr>
        </table>
</asp:Content>
