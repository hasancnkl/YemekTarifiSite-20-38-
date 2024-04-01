<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yemekler.aspx.cs" Inherits="Yemekler" %>



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
        .auto-style36 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" style="background-color:#CCCCCC; height:33px;">
        <table class="auto-style24">
            <tr>
                <td class="auto-style32">
                    <strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style31" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong>
                </td>
                <td class="auto-style34">
                    <strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style33" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong>
                </td>
                <td>YEMEK LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="447px">
            <ItemTemplate>
                <table class="auto-style24">
                    <tr>
                        <td class="auto-style29">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style28" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style30">
                            <a href='<%# "Yemekler.aspx?Yemekid=" + Eval("Yemekid") %>&islem=sil'><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style27">
                            <a href='<%# "YemekDuzenle.aspx?Yemekid=" + Eval("Yemekid") %>'>
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
                <td>YEMEK EKLEME</td>
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
                <td>YEMEK AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="275px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>MALZEMELER</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="80px" TextMode="MultiLine" Width="275px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>YEMEK TARİFİ</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="275px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="275px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style36"><strong>
                    <asp:Button ID="Button6" runat="server" CssClass="auto-style35" Height="50px" OnClick="Button6_Click" Text="EKLE" Width="50px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

