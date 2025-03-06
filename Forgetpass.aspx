<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forgetpass.aspx.cs" Inherits="HotelAsp.Forgetpass" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forget Password</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f8f8;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 500px;
            margin: 50px auto;
            background-color: #FFCC99;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }
        .form-title {
            font-size: 24px;
            font-weight: bold;
            text-decoration: underline;
            text-align: center;
            margin-bottom: 30px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            font-size: 16px;
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
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
        }
    </style>
</head>
<body>

    <form id="form1" runat="server" class="container">
        
        <!-- Title -->
        <div class="form-title">
            Forget Password
        </div>

        <!-- Username Field -->
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="input-field"></asp:TextBox>
        </div>

        <!-- Old Password Field -->
        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Old Password"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="input-field"></asp:TextBox>
        </div>

        <!-- New Password Field -->
        <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="New Password"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="input-field"></asp:TextBox>
        </div>

        <!-- Confirm Password Field -->
        <div class="form-group">
            <asp:Label ID="Label4" runat="server" Text="Confirm Password"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="input-field" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
        </div>

        <!-- Submit Button -->
        <div class="form-group">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Submit" CssClass="button" />
        </div>

        <!-- Footer (if needed) -->
        <div class="form-footer">
            <p>For any issues, please contact support.</p>
        </div>

    </form>

</body>
</html>
