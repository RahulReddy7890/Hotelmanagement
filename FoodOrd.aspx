<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FoodOrd.aspx.cs" Inherits="HotelAsp.FoodOrd" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Menu</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #F9F9F9;
            padding: 20px;
        }
        #Label1{
            text-align:center;
        }

        .container {
            border-style: solid;
            border-width: thick;
            background-color: #FFCC99;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-left: 40px;
        }

        .header-label {
            border-style: double;
            font-weight: bold;
            text-decoration: underline;
            color: #FF0066;
            text-align: center;
            font-size: 24px;
            width: 100%;
        }

        .section-label {
            font-weight: bold;
            font-size: 18px;
            color: #333;
        }

        .checkbox-label {
            font-size: 16px;
            margin-right: 10px;
        }

        .checkbox {
            margin-bottom: 10px;
           
        }
         .checkbox-special {
        margin-bottom: 15px; 
    }

        .submit-button {
            background-color: #FF0066;
            color: white;
            font-weight: bold;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            text-align: center;
            display: block;
            margin: 20px auto;
        }

        .submit-button:hover {
            background-color: #FF3366;
        }

        .total-section {
            margin-top: 20px;
            font-size: 18px;
            font-weight: bold;
        }

        .total-value {
            font-size: 20px;
            color: #FF0066;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="container">
            <asp:Label ID="Label1" runat="server" class="header-label" Text="....Menu hotel...."></asp:Label>
            <br /><br />

            <div class="total-section">
                <asp:Label ID="Label8" runat="server" class="section-label" Text="Total Bill="></asp:Label>
                <asp:Label ID="Label7" runat="server" class="total-value" Text="out"></asp:Label>
            </div>
            <br /><br />

            <div class="section">
                <asp:Label ID="Label2" runat="server" class="section-label" Text="STARTERS..."></asp:Label>
                <div class="checkbox checkbox-special">
                    <asp:CheckBox ID="CheckBox1" runat="server" class="checkbox-label" Text="Pakoda.......... 85rs" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox9" runat="server" class="checkbox-label" Text="Eggbendiet.......... 90rs" />
                </div>
                <div class="checkbox checkbox-special">
                    <asp:CheckBox ID="CheckBox2" runat="server" class="checkbox-label" Text="Thepla.......... 65rs" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox10" runat="server" class="checkbox-label" Text="Fresh berries.......... 40rs" />
                </div>
                <div class="checkbox checkbox-special">
                    <asp:CheckBox ID="CheckBox3" runat="server" class="checkbox-label" Text="Salmon Steak.......... 110rs" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox11" runat="server" class="checkbox-label" Text="Idali.......... 35rs" />
                </div>
                <div class="checkbox checkbox-special">
                    <asp:CheckBox ID="CheckBox4" runat="server" class="checkbox-label" Text="Dhokla.......... 40rs" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox20" runat="server" class="checkbox-label" Text="Puri.......... 60rs" />
                </div>
            </div>

            <div class="section">
                <asp:Label ID="Label5" runat="server" class="section-label" Text="JUICE..."></asp:Label>
                <div class="checkbox checkbox-special">
                    <asp:CheckBox ID="CheckBox12" runat="server" class="checkbox-label" Text="Mango.......... 20rs" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox13" runat="server" class="checkbox-label" Text="Green Tea.......... 30rs" />
                </div>
                <div class="checkbox checkbox-special">
                    <asp:CheckBox ID="CheckBox14" runat="server" class="checkbox-label" Text="Pineapple.......... 25rs" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox15" runat="server" class="checkbox-label" Text="Black Tea.......... 25rs" />
                </div>
                <div class="checkbox checkbox-special">
                    <asp:CheckBox ID="CheckBox16" runat="server" class="checkbox-label" Text="Grapes.......... 15rs" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox17" runat="server" class="checkbox-label" Text="Water.......... 20rs" />
                </div>
                <div class="checkbox checkbox-special">
                    <asp:CheckBox ID="CheckBox18" runat="server" class="checkbox-label" Text="Watermelon.......... 20rs" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox19" runat="server" class="checkbox-label" Text="Milk.......... 20rs" />
                </div>
            </div>

            <div class="section">
                <asp:Label ID="Label3" runat="server" class="section-label" Text="BREAKFAST..."></asp:Label>
                <div class="checkbox checkbox-special">
                    <asp:CheckBox ID="CheckBox5" runat="server" class="checkbox-label" Text="Salmon Salad.......... 30rs" />
                </div>
                <div class="checkbox checkbox-special">
                    <asp:CheckBox ID="CheckBox6" runat="server" class="checkbox-label" Text="Poke Salad.......... 45rs" />
                </div>
                <div class="checkbox checkbox-special">
                    <asp:CheckBox ID="CheckBox7" runat="server" class="checkbox-label" Text="Diet Salad.......... 40rs" />
                </div>
                <div class="checkbox checkbox-special">
                    <asp:CheckBox ID="CheckBox8" runat="server" class="checkbox-label" Text="Cucumber Salad.......... 30rs" />
                </div>
            </div>

            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="submit-button" Text="Submit order" Height="74px" />
        </div>
    </form>
</body>
</html>
