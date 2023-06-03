<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="ThongTin.aspx.cs" Inherits="NhatTrongManga.ThongTin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <table style="width:100%;">
            <tr>
                <td style="background-color: #333333">
                    <p class="fa-inverse">
                        <strong>Website này là đồ án môn Lập trình web của trường đại học Tài chính - Marketing do thầy Tô Oai Hùng giảng dạy và được thực hiện bởi hai sinh viên Nguyễn Minh Trọng - Lê Đình Nhật.</strong></p>
    <p class="fa-inverse">
        <strong>Chúng em xin cảm ơn thầy Tô Oai Hùng đã giúp đỡ và hỗ trợ chúng em hoàn thành đồ án môn học này.</strong></p>
    <p>
        <strong>
        <asp:Label ID="lblThongBao" runat="server" style="color: #00FFFF" Text="Vui lòng đăng nhập bằng tài khoản có quyền Admin để truy cập vào dữ liệu của trang."></asp:Label>
        </strong>
    </p>
                </td>
            </tr>
        </table>
    </p>
    <asp:Panel ID="Panel1" runat="server" style="background-color: #ffffff">
        <table style="width:100%;">
            <tr>
                <td class="auto-style6" style="width: 466px; padding-top: 50px">
                    <asp:ImageButton CssClass="btn btn-outline-info" ID="ImageButton1" runat="server" ImageUrl="~/ImageButton/Truyen.png" PostBackUrl="~/Admin/Truyen.aspx" Width="200px" />
                </td>
                <td class="auto-style6" style="width: 464px; padding-top: 50px">
                    <asp:ImageButton CssClass="btn btn-outline-info" ID="ImageButton2" runat="server" ImageUrl="~/ImageButton/TacGia.png" PostBackUrl="~/Admin/TacGia.aspx" Width="200px" />
                </td>
                <td class="auto-style6" style="width: 464px; padding-top: 50px">
                    <asp:ImageButton CssClass="btn btn-outline-info" ID="ImageButton3" runat="server" ImageUrl="~/ImageButton/TheLoai.png" PostBackUrl="~/Admin/TheLoai.aspx" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="height: 26px; width: 466px; "></td>
                <td class="auto-style6" style="height: 26px; width: 464px; "></td>
                <td class="auto-style6" style="height: 26px; "></td>
            </tr>
            <tr>
                <td class="auto-style6" style="width: 466px; ">
                    <asp:ImageButton CssClass="btn btn-outline-danger" ID="ImageButton4" runat="server" ImageUrl="~/ImageButton/Truyen_tg.png" PostBackUrl="~/Admin/Truyen_TG.aspx" Width="200px" />
                </td>
                <td class="auto-style6" style="width: 464px; ">
                    <asp:ImageButton CssClass="btn btn-outline-danger" ID="ImageButton5" runat="server" ImageUrl="~/ImageButton/Truyen_tl.png" PostBackUrl="~/Admin/Truyen_TL.aspx" Width="200px" />
                </td>
                <td class="auto-style6">
                    <asp:ImageButton CssClass="btn btn-outline-danger" ID="ImageButton6" runat="server" ImageUrl="~/ImageButton/CHAPTER.png" PostBackUrl="~/Admin/Chapter.aspx" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="width: 466px; ">&nbsp;</td>
                <td class="auto-style6" style="width: 464px; ">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" style="width: 466px; ">
                    <asp:ImageButton CssClass="btn btn-outline-success" ID="ImageButton7" runat="server" ImageUrl="~/ImageButton/HinhAnhChap.png" PostBackUrl="~/Admin/HinhAnhChap.aspx" Width="200px" />
                </td>
                <td class="auto-style6" style="width: 464px; ">
                    <asp:ImageButton CssClass="btn btn-outline-success" ID="ImageButton8" runat="server" ImageUrl="~/ImageButton/KeyWordTruyen.png" PostBackUrl="~/Admin/KeywordTruyen.aspx" Width="200px" />
                </td>
                <td class="auto-style6">
                    <asp:ImageButton CssClass="btn btn-outline-success" ID="ImageButton9" runat="server" ImageUrl="~/ImageButton/TheoDoi.png" PostBackUrl="~/Admin/TheoDoi.aspx" Width="200px" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="width: 466px; ">&nbsp;</td>
                <td class="auto-style6" style="width: 464px; ">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" style="width: 466px; ">&nbsp;</td>
                <td class="auto-style6" style="width: 464px; ">
                    <asp:ImageButton CssClass="btn btn-outline-warning" ID="ImageButton10" runat="server" ImageUrl="~/ImageButton/NguoiDung.png" PostBackUrl="~/Admin/NguoiDung.aspx" Width="200px" Enabled="False" />
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" style="width: 466px; height: 7px;"></td>
                <td class="auto-style6" style="width: 464px; height: 7px;"></td>
                <td class="auto-style6" style="height: 7px">
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="width: 466px; ">&nbsp;</td>
                <td class="auto-style6" style="width: 464px; ">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-outline-info" PostBackUrl="~/Admin/ChangePassword.aspx" style="font-size: x-large" Text="Đổi mật khẩu" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="width: 466px; ">&nbsp;</td>
                <td class="auto-style6" style="width: 464px; ">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
