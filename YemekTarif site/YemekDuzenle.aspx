<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YemekDuzenle.aspx.cs" Inherits="YemekDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style27 {
            text-align: right;
            width: 155px;
        }
        .auto-style28 {
        text-align: center;
    }
        .auto-style29 {
            width: 155px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style24">
        <tr>
            <td class="auto-style29">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27">YEMEK AD:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">MALZEMELER:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="100px" Width="250px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">TARİF:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="200px" Width="250px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">KATEGORİ:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">YEMEK GORUNTU:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style28">
                <asp:Button ID="Button1" runat="server" Text="GÜNCELLE" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style28">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="GUNUN YEMEGI SEC" />
            </td>
        </tr>
    </table>
</asp:Content>

