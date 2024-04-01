<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="KategoriDuzenle.aspx.cs" Inherits="KategoriAdminDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style27 {
            margin-left: 40px;
        }
        .auto-style28 {
            font-weight: bold;
            font-size: medium;
        }
        .auto-style29 {
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
            <td class="auto-style29"><strong>KATEGORİ AD:</strong></td>
            <td class="auto-style27">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style29"><strong>ADET:</strong></td>
            <td class="auto-style27">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style29"><strong>RESİM:</strong></td>
            <td class="auto-style27">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style27"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style28" Height="50px" OnClick="Button1_Click" Text="GÜNCELLE" Width="150px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>

