<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="HakkimizdaAdmin.aspx.cs" Inherits="HakkimizdaAdmin" %>





<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
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
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style31" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"    />
                    </strong>
                </td>
                <td class="auto-style34">
                    <strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style33" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"   />
                    </strong>
                </td>
                <td>HAKKIMIZDA</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style24">
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="200px" TextMode="MultiLine" Width="435px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style35"><strong>
                    <asp:Button ID="Button3" runat="server" Text="GUNCELLE" Width="200px" OnClick="Button3_Click" />
                    </strong></td>
            </tr>
        </table>
       
    </asp:Panel>
    
     
    
    
    </asp:Content>




