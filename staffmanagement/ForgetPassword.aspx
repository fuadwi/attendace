<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="staffmanagement.ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style type="text/css">
        .auto-style1 {
            width: 83%;
            height: 104px;
        }
        .auto-style2 {
            width: 133px;
        }
        .auto-style5 {
        width: 100%;
    }
    .auto-style7 {
        margin-left: 0px;
    }
    .auto-style8 {
        width: 131px;
    }
    body{
            background-color:ghostwhite;
        }
    </style>
</head>
<body>
    
   <form runat="server"> 
       <div>
           <asp:Image runat="server" ImageURL="KIET.jpg"  Width="100%" Height="149px"></asp:Image>
            
        </div>
        <div>
            <br />
           <center> <h2>Forgetpassword</h2> </center>
            <br />
         <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Register Email Id</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Email"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" Text="Enter" OnClick="Button1_Click" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="enter register id" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;
                        <br />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                  
            </table></div>
           
                
            

         

                


               <table class="auto-style5">
                   <tr>
                       <td class="auto-style8">verification code</td>
                       <td>
                           <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style7"></asp:TextBox>
                           <asp:Button ID="Button2" runat="server" Text="Enter" OnClick="Button2_Click" />
                       </td>
                   </tr>
               </table>

               </form> 


               
    
</body>
</html>
