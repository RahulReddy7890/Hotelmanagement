<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="HotelAsp.WebForm1" MasterPageFile="~/Site1.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <form id="frm" >
    <title>Login Form</title>
    <style>
       html, body {
    height: 100%;
    margin: 0;
    padding: 0;
    display: flex;
    flex-direction: column;
}

body {
    font-family: Arial, sans-serif;
    background-color: #f8f8f8;
    flex: 1; 
}


.container {
    width: 400px;
    margin: 0 auto;
    background-color: #FFCC99;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
    flex: 1;
    display: flex;
    flex-direction: column;
    justify-content: center; 
    align-items: center; 
    min-height: 200px; 
}


h2 {
    text-align: center;
    font-size: 24px;
    color: #333;
    margin-bottom: 20px;
}

.form-group {
    margin-bottom: 20px;
    width: 100%;
}

.form-group label {
    font-size: 16px;
    color: #333;
    margin-bottom: 5px;
    display: block;
}

.form-group input {
    width: 100%;
    padding: 10px;
    font-size: 16px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

.form-group input:focus {
    border-color: #FF6600;
    outline: none;
}

.form-group .error {
    color: #FF6600;
    font-size: 12px;
}


.form-group .button {
    background-color: #FF6600;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    width: 100%;
    font-size: 16px;
    text-align: center;
}

.form-group .button:hover {
    background-color: #e65c00;
}


.form-footer {
    text-align: center;
    margin-top: 20px;
    padding: 20px 0;
    background-color: #FFCC99;
   
    position:relative;
    bottom: 0;
}

.form-footer .button {
    width: auto;  
}

.form-footer a {
    color: #FF6600;
    text-decoration: none;
    font-size: 16px;
}

.form-footer a:hover {
    text-decoration: underline;
}
 }
    </style>
>

    <form id="form1" runat="server" class="container">

        <h2>&nbsp;</h2>

       <div class="container">
            <h2>Login Form</h2>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="input-field"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please first register" ForeColor="#FF6600"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="input-field"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Fill IT" ForeColor="#FF6600"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <asp:Button ID="Button1" runat="server" Text="Change Pass" OnClick="Button1_Click" CssClass="button" />
            </div>

            <div class="form-group">
                <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" CssClass="button" />
            </div>
       

             <div class="form-group">
                 <asp:Button ID="Button3" runat="server" Text="Registration" OnClick="Button3_Click" CssClass="button" />
            <div>
      </div>
        <%-- <div class="form-footer">
             Shiv&copy 2025
     </div>--%>
    </form>

</asp:Content>
