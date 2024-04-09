<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YorumDetay.aspx.cs" Inherits="YorumDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style27 {
        margin-left: 40px;
    }
    .auto-style28 {
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
        <td class="auto-style28"><strong>AD SOYAD:</strong></td>
        <td class="auto-style27">
            <asp:TextBox ID="TxtAd" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style28"><strong>MAİL ADRESİ:</strong></td>
        <td class="auto-style27">
            <asp:TextBox ID="TxtMail" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style28"><strong>İÇERİK:</strong></td>
        <td class="auto-style27">
            <asp:TextBox ID="Txticerik" runat="server" Height="100px" OnTextChanged="TextBox3_TextChanged" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style28"><strong>YEMEK:</strong></td>
        <td class="auto-style27">
            <asp:TextBox ID="TxtYemek" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style27">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style27">
            <asp:Button ID="BtnOnayla" runat="server" OnClick="BtnOnayla_Click" Text="ONAYLA" Width="150px" />
        </td>
    </tr>
</table>
</asp:Content>

