<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="QuenMatKhau.aspx.cs" Inherits="NhatTrongManga.QuenMatKhau" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
    <tr>
        <td style="background-color: #333333; width: 572px;">
            &nbsp;</td>
        <td style="background-color: #333333">
            <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" AnswerLabelText="Trả lời:" CssClass="fa-inverse" GeneralFailureText="Lấy lại mật khẩu không thành công. Vui lòng thử lại!" QuestionFailureText="Câu trả lời của bạn có thể không đúng. Vui lòng thử lại!" QuestionInstructionText="Vui lòng trả lời câu hỏi để lấy lại mật khẩu!" QuestionLabelText="Câu hỏi:" QuestionTitleText="Xác nhận" SubmitButtonText="Xác nhận" SuccessText="Đã gửi mật khẩu!" UserNameFailureText="Chúng tôi không thể lấy thông tin của bạn. Vui lòng thử lại!" UserNameInstructionText="Vui lòng nhập tài khoản để lấy lại mật khẩu!" UserNameLabelText="Tài khoản:" UserNameTitleText="Quên mật khẩu?" style="margin-left: 0px">
                <MailDefinition From="kizfio552@gmail.com" Subject="Lấy lại mật khẩu!">
                </MailDefinition>
            </asp:PasswordRecovery>
        </td>
    </tr>
</table>
</asp:Content>
