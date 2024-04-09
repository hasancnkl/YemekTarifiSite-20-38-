<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="TarifOnerDetay.aspx.cs" Inherits="TarifOnerDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style29 {
            font-weight: bold;
            text-align: right;
            height: 29px;
            width: 174px;
        }
        .auto-style30 {
            height: 29px;
        }
        .auto-style31 {
            font-size: medium;
            font-weight: bold;
        }
        .auto-style33 {
            width: 174px;
        }
        .auto-style36 {
        width: 174px;
        font-weight: bold;
        text-align: right;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style26">
            <tr>
                <td class="auto-style33">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">TARİF AD:</td>
                <td class="auto-style30" style="margin-left: 40px">
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style36">TARİF MALZEMELER:</td>
                <td style="margin-left: 40px">
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style36">YAPILIS:</td>
                <td style="margin-left: 40px">
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style36"><b>TARIF RESİM:</b></td>
                <td style="margin-left: 40px">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style36"><b>TARİF ONEREN:</b></td>
                <td style="margin-left: 40px">
                    <asp:TextBox ID="TextBox4" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style36"><b>ONEREN MAİL:</b></td>
                <td style="margin-left: 40px">
                    <asp:TextBox ID="TextBox5" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style36">KATEGORİ</td>
                <td style="margin-left: 40px">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style33">&nbsp;</td>
                <td style="margin-left: 40px">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style31" Text="ONAYLA" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

