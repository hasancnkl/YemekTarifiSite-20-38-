<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Mesajlar.aspx.cs" Inherits="Mesajlar" %>

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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" style="background-color:#CCCCCC; height:33px;">
        <table class="auto-style24">
            <tr>
                <td class="auto-style32">
                    <strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style31" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"  />
                    </strong>
                </td>
                <td class="auto-style34">
                    <strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style33" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"  />
                    </strong>
                </td>
                <td>MESAJ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="447px">
            <ItemTemplate>
                <table class="auto-style24">
                    <tr>
                        <td class="auto-style29">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style28" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                        </td>
                        <td class="auto-style27">
                            
                              <a href='<%# "MesajDetay.aspx?Mesajid=" + Eval("Mesajid") %>'>
    <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/read.png" Width="30px" />
</a>

                            
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
     
    
    
    </asp:Content>
