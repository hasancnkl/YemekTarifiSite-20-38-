<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style27 {
            text-align: right;
            width: 150px; /* added for consistency */
        }
        .auto-style28 {
            font-size: large;
        }
        .auto-style29 {
            width: 222px;
        }
        .auto-style30 {
            text-align: right;
            width: 137px;
        }
        .auto-style31 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style32 {
            width: 33px;
        }
        .auto-style33 {
            font-weight: bold;
            font-size: large;
            margin-left: 0px;
        }
        .auto-style34 {
            width: 38px;
        }
        .auto-style35 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" style="background-color:#CCCCCC; height:33px;">
        <table class="auto-style24">
            <tr>
                <td class="auto-style32">
                    <strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style31" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                    </strong>
                </td>
                <td class="auto-style34">
                    <strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style33" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                    </strong>
                </td>
                <td>KATEGORİ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="447px">
            <ItemTemplate>
                <table class="auto-style24">
                    <tr>
                        <td class="auto-style29">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style28" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style30">
                            <a href='<%# "kategoriler.aspx?Kategoriid=" + Eval("Kategoriid") %>&islem=sil'><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style27">
                            <a href='<%# "kategoriDuzenle.aspx?Kategoriid=" + Eval("Kategoriid") %>'>
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/update.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" style="background-color:#CCCCCC; margin-top:15px; height:33px;">
        <table class="auto-style24">
            <tr>
                <td class="auto-style32">
                    <strong>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style31" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click" />
                    </strong>
                </td>
                <td class="auto-style34">
                    <strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style33" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                    </strong>
                </td>
                <td>KATEGORİ EKLEME</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style24">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>KATEGORİ AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ İKON</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <strong>
                        <asp:Button ID="Button5" runat="server" CssClass="auto-style35" Height="50px" Text="EKLE" Width="50px" OnClick="Button5_Click" />
                    </strong>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
