<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="MesajDetay.aspx.cs" Inherits="MesajDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style27 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style24">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27"><strong>MESAJ GÖNDEREN:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style27"><strong>BAŞLIK:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style27"><strong>MAİL ADRESİ:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style27"><strong>MESAJ İÇERİK</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="200px" TextMode="MultiLine" Width="180px"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>

