<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hot reg.aspx.cs" Inherits="HotelAsp.hot_reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Room Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            width: 70%;
            max-width: 600px;
            background-color: #FFCC99;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            font-weight: bold;
            color: #333;
            text-decoration: underline;
        }

        .label {
            font-weight: bold;
            margin-bottom: 10px;
            display: inline-block;
            width: 30%;
        }

        .input-field {
            width: 65%;
            padding: 8px;
            margin-bottom: 15px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .radio-buttons, .checkboxes {
            margin-bottom: 15px;
        }

        .radio-buttons input, .checkboxes input {
            margin-right: 10px;
        }

        .submit-btn, .food-btn {
            background-color: #FF6600;
            color: white;
            border: none;
            padding: 10px 20px;
            font-weight: bold;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            width: 100%;
        }

        .submit-btn:hover, .food-btn:hover {
            background-color: #e65c00;
        }

        .total-rent {
            margin-bottom: 20px;
            font-size: 18px;
            font-weight: bold;
            color: #333;
        }

        .footer {
            text-align: center;
            margin-top: 20px;
            color: #555;
            font-size: 14px;
        }

        .spacer {
            margin-top: 20px;
        }

    </style>
</head>
<body>

    <form id="form1" runat="server">
        <div class="container">
            <h2>Room Registration</h2>

            <!-- Total Rent Display -->
            <div class="total-rent">
                <span> Total Rent = </span>
                <asp:Label ID="Label5" runat="server" Text="out"></asp:Label>
            </div>

            <!-- Username Input -->
            <div>
                <asp:Label ID="Label6" runat="server" CssClass="label" Text="Username:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="input-field" ReadOnly="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Fill it"></asp:RequiredFieldValidator>
            </div>

            <!-- Room Type Selection -->
            <div class="radio-buttons">
                <asp:Label ID="Label2" runat="server" CssClass="label" Text="Room Type:"></asp:Label>
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Rtype" Text="Deluxe" />
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Rtype" Text="Ordinary" />
            </div>

            <!-- Animated Features -->
            <div class="checkboxes">
                <asp:Label ID="Label3" runat="server" CssClass="label" Text="Animated:"></asp:Label>
                <asp:CheckBox ID="CheckBox1" runat="server" Text="A.C" />
                <asp:CheckBox ID="CheckBox2" runat="server" Text="Computer" />
            </div>
             <!-- Submit Button -->
             <div>
                 <asp:Button ID="Button1" runat="server" CssClass="submit-btn" OnClick="Button1_Click" Text="Register" />
             </div>
            <br/>
              
            <!-- Food Preference -->
            <div>
                <asp:Label ID="Label7" runat="server" Text="You want food  : "></asp:Label>
                <asp:Button ID="Button2" runat="server" CssClass="food-btn" OnClick="Button2_Click" Text="Click here.." />
            </div>
            <br />
            
           

            <div class="footer">
                <span>Hotel Registration  &copy; 2025</span>
            </div>
        </div>
    </form>

</body>
</html>
