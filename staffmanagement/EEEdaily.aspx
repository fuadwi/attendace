<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EEEdaily.aspx.cs" Inherits="staffmanagement.EEEdaily" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
         *{
            padding:0;
            margin:0;
        }
        #m ul{
            list-style-type:none;
        }
        #m ul li{
            background-color:ActiveCaption;
            border:solid 1px;
            
            line-height:35px;
            width:120px;
            height:35px;
            text-align:center;
            float:left;
            position:relative;
        }
        #m ul li a{
            display:block;
            color:white;
            text-decoration:none;
        }
        #m ul li a:hover{
            background-color:white;
            color:black;
        }
        #m ul ul{
            position:absolute;
            display:none;
        }
        #m ul li:hover>ul{
            display:block;
        }
        .auto-style2 {
            left: 0px;
            top: 0px;
            width: 170px;
        }
        .auto-style3 {
            left: 4px;
            top: 0px;
            width: 199px;
        }
        .auto-style4 {
            left: 3px;
            top: 0px;
            width: 184px;
        }
        .auto-style5 {
            left: 0px;
            top: 0px;
            width: 162px;
        }
        .auto-style6 {
            left: 0px;
            top: 0px;
            width: 157px;
        }
        .auto-style1 {
            width: 100%;
            height: 101px;
        }
        .auto-style2 {
            width: 100%;
            height: 106px;
        }
        .auto-style3 {
            color: #FF0000;
        }
        .auto-style4 {
            color: #00FF00;
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
        <div id="m">
            <ul>
               <li class="auto-style6"><a class="active" href="EHome.aspx">Home</a></li>
               <li class="auto-style5"><a href="Edaily.aspx">Daily Work</a></li>
               <li class="auto-style4"><a href="Esalary.aspx">Salary</a></li>
                <li class="auto-style4"><a href="Eleave.aspx">Leave</a></li>
                 <li class="auto-style3"><a href="Epwd.aspx">Change Password</a></li>
                 <li class="auto-style2"><a href="Login.aspx">Logout</a></li>
            </ul>
        </div>
        <br /><br /><br />
        <div>
            <br />


            Morning Session:<table class="auto-style1">
                <tr>
                    <td>Type Of&nbsp; Work </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="225px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style3" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="31px" Width="225px" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style3" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <br />
            Afternoon Session:<br />
            <table class="auto-style2">
                <tr>
                    <td>Type Of&nbsp; Work </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="225px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" CssClass="auto-style3" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Height="23px" Width="225px" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" CssClass="auto-style3" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style4"></asp:Label>
            <center><asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click"></asp:Button></center>
            <br />
        </div>
    </form>
</body>
</html>
