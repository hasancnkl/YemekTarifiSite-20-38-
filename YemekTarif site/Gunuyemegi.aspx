<%@ Page Title="" Language="C#" MasterPageFile="~/kullanıcı.master" AutoEventWireup="true" CodeFile="Gunuyemegi.aspx.cs" Inherits="Gunuyemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style25 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style26 {
            font-size: medium;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <p>
        <asp:DataList ID="DataList2" runat="server" CssClass="auto-style31" Height="1377px" Width="255px">
            <ItemTemplate>
                <table class="auto-style26">
                    <tr>
                        <td class="auto-style25">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style38">
                            <table class="auto-style8">
                                <tr>
                                    <td class="auto-style28">
                                        <strong>
                                            <asp:Label ID="Label3" runat="server" CssClass="auto-style30" Text='<%# Eval("YemekAd") %>'></asp:Label>
                                        </strong>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <table class="auto-style33">
                                <tr>
                                    <td>
                                        <strong>Mazemeler:</strong>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <table class="auto-style8">
                                <tr>
                                    <td>
                                        <strong>Tarif:</strong>
                                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <table class="auto-style29">
                                <tr>
                                    <td class="auto-style32">
                                        <asp:Image ID="Image1" runat="server" CssClass="auto-style27" Height="181px" Width="354px" ImageUrl='<%# Eval("YemekResim") %>' />
                                    </td>
                                </tr>
                            </table>
                            <table class="auto-style34">
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                            <table class="auto-style8">
                                <tr>
                                    <td class="auto-style36">Puan:
                                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style25">
                                        <strong>Ekleme Tarih: <em>
                                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                                        </em></strong>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
</asp:Content>
