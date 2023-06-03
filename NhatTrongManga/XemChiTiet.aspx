<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="XemChiTiet.aspx.cs" Inherits="NhatTrongManga.XemChiTiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td rowspan="6" style="text-align: center; width: 300px; background-color: #333333; padding-top: 20px">
                <asp:Image ID="Image1" runat="server" Height="250px" Width="200px" />
            </td>
            <td colspan="2" style="height: 16px; background-color: #333333; padding-top: 20px"><strong>
                <asp:Label CssClass="text-danger" ID="lblTenTruyen" runat="server" style="font-size: x-large; color: #FFFFFF;" Text="Tên truyện"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style4" style="width: 156px">
                <i style="color:#FFFFFF" class="fas fa-user"></i> <asp:Label ID="Label1" runat="server" Text="Tác giả" CssClass="fa-inverse" style="background-color: #333333"></asp:Label>
            </td>
            <td style="background-color: #333333">
                <asp:Label ID="lblTacGia" runat="server" Text="Tác giả" CssClass="fa-inverse"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="width: 156px">
                <i style="color:#FFFFFF" class="fas fa-rss"></i> <asp:Label ID="Label2" runat="server" Text="Tình trạng" CssClass="fa-inverse"></asp:Label>
            </td>
            <td style="background-color: #333333">
                <asp:Label ID="lblTinhTrang" runat="server" Text="Tình trạng" CssClass="fa-inverse"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="width: 156px">
                <i style="color:#FFFFFF" class="fas fa-eye"></i> <asp:Label ID="Label3" runat="server" Text="Lượt xem" CssClass="fa-inverse"></asp:Label>
            </td>
            <td style="background-color: #333333">
                <asp:Label ID="lblLuotXem" runat="server" Text="Lượt xem" CssClass="fa-inverse"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="width: 156px">
                <i style="color:#FFFFFF" class="fas fa-thumbs-up"></i> <asp:Label ID="Label4" runat="server" Text="Lượt thích" CssClass="fa-inverse"></asp:Label>
            </td>
            <td style="background-color: #333333">
                <asp:Label ID="lblLuotThich" runat="server" Text="Lượt thích" CssClass="fa-inverse"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="width: 156px">
                <strong>
                <asp:Button CssClass="btn btn-outline-info" ID="btnThich" runat="server" OnClick="btnThich_Click" style="font-weight: bold;" Text="Thích" />
                </strong>
            </td>
            <td style="background-color: #333333">
                &nbsp;</td>
        </tr>
    </table>
    <table style="width:100%; background-color: #333333;">
        <tr>
            <td style="width: 524px; background-color: #333333; font-size: x-large; padding-top: 20px; padding-left: 10px" class="fa-inverse"> <i class="fas fa-info-circle"></i> Giới thiệu</td>
            <td style="background-color: #333333; width: 420px;" class="text-start">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" style="background-color: #333333" class="text-start">
                <asp:Label ID="lblMoTa" runat="server" Text="Mô tả" CssClass="fa-inverse" Width="1000px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 376px; text-align: center; height: 26px; font-size: x-large; background-color: #333333; padding-top: 20px; " class="fa-inverse"> <i class="fas fa-database"></i> <strong>Danh sách chương</strong></td>
            <td style="height: 26px; width: 420px; background-color: #333333;"></td>
            <td style="height: 26px; background-color: #333333;"></td>
        </tr>
        <tr>
            <td style="width: 376px; text-align: center">
                <asp:DataList ID="DataList1" runat="server" Width="963px" style="background-color: #333333">
                    <HeaderTemplate>
                        <table style="width:100%;">
                            <tr>
                                <td style="text-align: left; width: 150px;" class="fa-inverse"><strong>Tên Chap</strong></td>
                                <td class="fa-inverse" style="width: 237px"><strong>Thời gian tạo</strong></td>
                                <td class="fa-inverse"><strong>Lượt xem</strong></td>
                            </tr>
                        </table>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <table style="width:100%;">
                            <tr>
                                <td style="text-align: left; width: 150px;">
                                    <asp:HyperLink CssClass="link-light text-decoration-none" ID="HyperLink1" runat="server" NavigateUrl='<%# "DocTruyen.aspx?ID=" + Eval("MaChap") + "&key=" + Eval("MaTruyen") %>' Text='<%# Eval("TenChap") %>'></asp:HyperLink>
                                </td>
                                <td class="auto-style3" style="width: 237px">
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("ThoiGianTao", "{0:d}") %>' CssClass="fa-inverse"></asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("LuotXem") %>' CssClass="fa-inverse"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td style="width: 420px; background-color: #333333;">
                &nbsp;</td>
            <td style="background-color: #333333">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 376px; text-align: center">
                &nbsp;</td>
            <td style="width: 420px; background-color: #333333;">
                &nbsp;</td>
            <td style="background-color: #333333">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center">
                <asp:GridView ID="GridView1" runat="server" Visible="False">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
