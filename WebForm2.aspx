<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="HotelAsp.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  


     <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Underline="True" Text="Go to Login Form:    " ></asp:Label>
     <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="Login" />
     
</asp:Content>

