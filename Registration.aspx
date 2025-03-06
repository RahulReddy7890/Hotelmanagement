<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="HotelAsp.Registration" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
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
        h2 {
            text-align: center;
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            font-size: 16px;
            color: #333;
            margin-bottom: 5px;
            display: block;
        }
        .form-group input,
        .form-group select,
        .form-group textarea {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .form-group input:focus,
        .form-group select:focus,
        .form-group textarea:focus {
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

        /* Aligning Radio Buttons in a single row */
        .form-group .radio-group {
            display: flex;
            justify-content: space-between;
        }

        /* Aligning Checkboxes in a single row */
        .form-group .checkbox-group {
            display: flex;
            justify-content: space-between;
        }

        .form-footer {
            text-align: center;
            margin-top: 20px;
        }
        .form-footer a {
            color: #FF6600;
            text-decoration: none;
            font-size: 16px;
        }
        .form-footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server" class="container">
        
        <h2>Registration Form</h2>

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF6600" ValidationGroup="register" />

        <!-- First Name -->
        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="input-field"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Fill First Name" ForeColor="#FF6600"></asp:RequiredFieldValidator>
        </div>

        <!-- Last Name -->
        <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="input-field" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Fill Last Name" ForeColor="#FF6600"></asp:RequiredFieldValidator>
        </div>

        <!-- Username -->
        <div class="form-group">
            <asp:Label ID="Label4" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="input-field"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Fill Username" ForeColor="#FF6600"></asp:RequiredFieldValidator>
        </div>

        <!-- Gender (Radio Buttons in Single Row) -->
        <div class="form-group">
            <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
            <div class="radio-group">
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="rbgender" Text="Male" />
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="rbgender" Text="Female" />
            </div>
        </div>

        <!-- Password -->
        <div class="form-group">
            <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" CssClass="input-field"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Fill Password" ForeColor="#FF6600"></asp:RequiredFieldValidator>
        </div>

        <!-- Confirm Password -->
        <div class="form-group">
            <asp:Label ID="Label7" runat="server" Text="Confirm Password"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" CssClass="input-field"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="Password and Confirm Password must be the same" ForeColor="#FF6600"></asp:CompareValidator>
        </div>

        <!-- Email -->
        <div class="form-group">
            <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" CssClass="input-field"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="Insert Correct Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#FF6600"></asp:RegularExpressionValidator>
        </div>

        <!-- Phone Number -->
        <div class="form-group">
            <asp:Label ID="Label9" runat="server" Text="Phone"></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server" MaxLength="10" CssClass="input-field"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox7" ErrorMessage="Fill Indian Number" ValidationExpression="^[7-9]\d{9}$" ForeColor="#FF6600"></asp:RegularExpressionValidator>
        </div>

        <!-- Address -->
        <div class="form-group">
            <asp:Label ID="Label10" runat="server" Text="Address"></asp:Label>
            <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine" CssClass="input-field"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox8" ErrorMessage="Fill Address" ForeColor="#FF6600"></asp:RequiredFieldValidator>
        </div>

        <!-- Age -->
        <div class="form-group">
            <asp:Label ID="Label11" runat="server" Text="Age"></asp:Label>
            <asp:TextBox ID="TextBox9" runat="server" CssClass="input-field"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox9" ErrorMessage="Above 5 years" MaximumValue="100" MinimumValue="5" Type="Integer" ForeColor="#FF6600"></asp:RangeValidator>
        </div>

        <!-- Languages (Checkboxes in Single Row) -->
        <div class="form-group">
            <asp:Label ID="Label12" runat="server" Text="Languages"></asp:Label>
            <div class="checkbox-group">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="English" />
                <asp:CheckBox ID="CheckBox2" runat="server" Text="Hindi" />
                <asp:CheckBox ID="CheckBox3" runat="server" Text="Marathi" />
                <asp:CheckBox ID="CheckBox4" runat="server" Text="Telugu" />
            </div>
        </div>

        <!-- State -->
        <div class="form-group">
            <asp:Label ID="Label13" runat="server" Text="State"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="input-field">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem Value="MH">Maharastra</asp:ListItem>
                <asp:ListItem Value="AP">Andrapradesh</asp:ListItem>
                <asp:ListItem Value="OR">Orissa</asp:ListItem>
                <asp:ListItem Value="GA">Goa</asp:ListItem>
                <asp:ListItem Value="TN">Tamil Nadu</asp:ListItem>
                <asp:ListItem Value="PB">Punjab</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Choose State" ForeColor="#FF6600"></asp:RequiredFieldValidator>
        </div>

        <!-- Submit Button -->
        <div class="form-group">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" CssClass="button" />
        </div>

    </form>

</body>
</html>
