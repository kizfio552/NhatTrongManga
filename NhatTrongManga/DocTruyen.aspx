<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="DocTruyen.aspx.cs" Inherits="NhatTrongManga.DocTruyen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
        <tr>
            <td colspan="3" style="background-color: #333333">
                <asp:Label ID="lblTenTruyen" runat="server" Text="Tên truyện -" CssClass="fa-inverse"></asp:Label>
                <asp:Label ID="lblTenChap" runat="server" Text="Tên chap (" CssClass="fa-inverse"></asp:Label>
                <asp:Label ID="lblUpdate" runat="server" Text="Ngày cập nhật)" CssClass="fa-inverse"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center; height: 26px; background-color: #333333;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 328px" class="auto-style4">&nbsp;</td>
            <td style="background-color: #333333" class="text-center">
                <asp:DataList ID="DataList2" runat="server" style="margin-left: 390px">
                    <ItemTemplate>                        
                        <asp:HyperLink CssClass="link-info text-decoration-none" Visible ='<%# Convert.ToBoolean(Eval("prev_word").ToString() != "") %>' ID="HyperLink1" runat="server" NavigateUrl='<%# "DocTruyen.aspx?ID=" + Eval("prev_word") + "&key=" + Eval("MaTruyen") %>'>&lt;-Chap trước</asp:HyperLink>
                        <asp:HyperLink CssClass="link-info text-decoration-none" Visible ='<%# Convert.ToBoolean(Eval("next_word").ToString() != "") %>' ID="HyperLink2" runat="server" NavigateUrl='<%# "DocTruyen.aspx?ID=" + Eval("next_word") + "&key=" + Eval("MaTruyen") %>'>Chap sau -&gt;</asp:HyperLink>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td style="background-color: #333333">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 328px" class="auto-style4">&nbsp;</td>
            <td style="background-color: #333333" class="text-center">
                <asp:DataList ID="DataList1" runat="server" style="margin-left: 0px">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "AnhChapter/" + Eval("HinhAnh") %>' />
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td style="background-color: #333333">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 328px; height: 26px;" class="auto-style4"></td>
            <td style="height: 26px; background-color: #333333;" class="text-center">
                <asp:DataList ID="DataList3" runat="server" style="margin-left: 390px">
                    <ItemTemplate>                        
                        <asp:HyperLink CssClass="link-info text-decoration-none" Visible ='<%# Convert.ToBoolean(Eval("prev_word").ToString() != "") %>' ID="HyperLink1" runat="server" NavigateUrl='<%# "DocTruyen.aspx?ID=" + Eval("prev_word") + "&key=" + Eval("MaTruyen") %>'>&lt;-Chap trước</asp:HyperLink>
                        <asp:HyperLink CssClass="link-info text-decoration-none" Visible ='<%# Convert.ToBoolean(Eval("next_word").ToString() != "") %>' ID="HyperLink2" runat="server" NavigateUrl='<%# "DocTruyen.aspx?ID=" + Eval("next_word") + "&key=" + Eval("MaTruyen") %>'>Chap sau -&gt;</asp:HyperLink>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td style="height: 26px; background-color: #333333;"></td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center; height: 27px; background-color: #333333;">
            </td>
        </tr>
        <tr>
            <td colspan="3" style="background-color: #333333">
                <asp:GridView ID="GridView1" runat="server" Visible="False">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
