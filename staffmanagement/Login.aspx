<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="staffmanagement.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-bottom: 0px;
        }
        .auto-style2 {
            height: 69px;
        }
        .auto-style4 {
            height: 69px;
            width: 663px;
            text-align: right;
        }
        .auto-style5 {
            width: 663px;
            text-align: right;
            height: 68px;
        }
        .auto-style6 {
            width: 663px;
            text-align: right;
            height: 82px;
        }
        .auto-style7 {
            height: 82px;
        }
        .auto-style8 {
            height: 68px;
        }
        .auto-style9 {
            height: 40px;
        }
        .auto-style10 {
            height: 30px;
        }
        body{
            background-color:ghostwhite;
        }
    </style>
</head>
     
<body>
    <form id="form1" runat="server">
        <div>
           <asp:Image runat="server" ImageURL="KIET.jpg"  Width="100%" Height="149px"></asp:Image>
            
        </div>
        <div>

            <table class="auto-style1">
                <tr>
                    <td colspan="2" class="auto-style9"><center><h1>STAFF MANAGEMENT</h1></center></td>
                    
                </tr>
                <tr>
                    <td colspan="2" class="auto-style10"><center><h2>Login</h2></center></td>
                    
                </tr>
                <tr>
                    <td class="auto-style6">Email Id</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Email"></asp:TextBox>
&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="enter mail" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter valid mail id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Password</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Enter" />
                    </td>
                    <td class="auto-style8">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="ForgetPassword.aspx">Forgetpassword</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
