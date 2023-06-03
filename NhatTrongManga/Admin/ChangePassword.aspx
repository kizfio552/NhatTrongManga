<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="NhatTrongManga.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="background-color: #333333; width: 558px;">
                &nbsp;</td>
            <td style="background-color: #333333">
                <asp:ChangePassword ID="ChangePassword1" runat="server" CancelButtonText="Hủy" CancelDestinationPageUrl="~/TrangChu.aspx" ChangePasswordButtonText="Đổi mật khẩu" ChangePasswordFailureText="Mật khẩu không đúng hoặc mật khẩu mới không hợp lệ. Mật khẩu mới phải có ít nhất 7 ký tự và 1 ký tự đặc biệt!" ChangePasswordTitleText="Đổi mật khẩu!" ConfirmNewPasswordLabelText="Nhập lại mật khẩu mới:" ConfirmPasswordCompareErrorMessage="Mật khẩu mới nhập lại phải giống mật khấu mới!" ConfirmPasswordRequiredErrorMessage="Vui lòng nhập lại mật khẩu mới!" ContinueButtonText="Tiếp theo" ContinueDestinationPageUrl="~/TrangChu.aspx" CssClass="fa-inverse" DisplayUserName="True" NewPasswordLabelText="Mật khẩu mới:" NewPasswordRegularExpressionErrorMessage="Vui lòng nhập mật khẩu khác!" NewPasswordRequiredErrorMessage="Vui lòng nhập mật khẩu mới!" PasswordLabelText="Mật khẩu hiện tại:" PasswordRequiredErrorMessage="Vui lòng nhập mật khẩu hiện tại!" SuccessText="Đổi mật khẩu thành công!" SuccessTitleText="Hoàn thành đổi mật khẩu!" UserNameLabelText="Tài khoản:" UserNameRequiredErrorMessage="Vui lòng nhập tài khoản!">
                    <MailDefinition BodyFileName="~/ChangePassword.txt" From="kizfio552@gmail.com" Subject="Thay đổi mật khẩu thành công!">
                    </MailDefinition>
                </asp:ChangePassword>
            </td>
        </tr>
    </table>
</asp:Content>
