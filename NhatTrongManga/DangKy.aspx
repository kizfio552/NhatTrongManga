<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="NhatTrongManga.DangKy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10" style="width: 1633px">
    <tr>
        <td class="auto-style9" style="text-align: left; width: 511px;">
            &nbsp;</td>
        <td class="auto-style9" style="text-align: left;">
            <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" AnswerLabelText="Câu trả lời bảo mật:" AnswerRequiredErrorMessage="Vui lòng nhập câu trả lời bảo mật!" CancelButtonText="Hủy bỏ" CompleteSuccessText="Tài khoản của bạn đã được tạo thành công!" ConfirmPasswordCompareErrorMessage="Mật khẩu nhập lại chưa giống!" ConfirmPasswordLabelText="Nhập lại mật khẩu:" ConfirmPasswordRequiredErrorMessage="Vui lòng nhập lại mật khẩu!" ContinueButtonText="Tiếp tục" CreateUserButtonText="Tạo tài khoản" DuplicateEmailErrorMessage="Email đã được sử dụng. Vui lòng nhập lại!" DuplicateUserNameErrorMessage="Tài khoản đã tồn tại. Vui lòng nhập lại!" EmailRegularExpressionErrorMessage="Vui lòng nhập Email khác!" EmailRequiredErrorMessage="Vui lòng nhập Email!" FinishCompleteButtonText="Hoàn thành" FinishPreviousButtonText="Trở về" InvalidAnswerErrorMessage="Vui lòng nhập câu trả lời bảo mật khác!" InvalidEmailErrorMessage="Vui lòng nhập Email hợp lệ!" InvalidQuestionErrorMessage="Vui lòng nhập câu hỏi bảo mật khác!" PasswordLabelText="Mật khẩu:" PasswordRegularExpressionErrorMessage="Vui lòng nhập mật khẩu khác!" PasswordRequiredErrorMessage="Vui lòng nhập mật khẩu!" QuestionLabelText="Câu hỏi bảo mật:" QuestionRequiredErrorMessage="Vui lòng nhập câu hỏi bảo mật!" StartNextButtonText="Tiếp theo" StepNextButtonText="Tiếp theo" StepPreviousButtonText="Trở về" UnknownErrorMessage="Tạo tài khoản thất bại. Vui lòng thử lại!" UserNameLabelText="Tài khoản:" UserNameRequiredErrorMessage="Vui lòng nhập tài khoản!" ContinueDestinationPageUrl="~/Login.aspx" InvalidPasswordErrorMessage="Mật khẩu phải có ít nhất 7 ký tự và 1 ký tự đặc biệt!">
                <MailDefinition BodyFileName="~/Register.txt" From="kizfio552@gmail.com" Subject="&quot;Đăng ký thành công!&quot;">
                </MailDefinition>
                <WizardSteps>
                    <asp:CreateUserWizardStep runat="server" />
                    <asp:CompleteWizardStep runat="server" />
                </WizardSteps>
            </asp:CreateUserWizard>
        </td>
    </tr>
</table>
</asp:Content>
