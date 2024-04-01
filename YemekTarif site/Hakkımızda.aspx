<%@ Page Title="" Language="C#" MasterPageFile="~/kullanıcı.master" AutoEventWireup="true" CodeFile="Hakkımızda.aspx.cs" Inherits="Hakkımızda" %>

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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        <div class="auto-style25">
            <strong>HAKKIMIZDA</strong></div>
        <asp:DataList ID="DataList2" runat="server" Width="445px" Height="138px">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>' CssClass="auto-style26"></asp:Label>
            </ItemTemplate>
        </asp:DataList>
        <asp:Image ID="Image1" runat="server" Height="170px" ImageUrl="~/resimler/team.jpeg" Width="450px" />
    </p>
</asp:Content>

