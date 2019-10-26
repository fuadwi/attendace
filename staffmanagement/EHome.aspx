<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EHome.aspx.cs" Inherits="staffmanagement.HomeE" %>

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
        .auto-style3 {
            width: 67%;
            height: 586px;
        }
        .auto-style4 {
            width: 357px;
        }
        .auto-style9 {
            width: 357px;
            height: 36px;
        }
        .auto-style10 {
            left: 4px;
            top: 0px;
            width: 685px;
            height: 586px;
        }
        .auto-style11 {
            width: 411px;
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
        <div><br /><br /><br />
            <h2>Profile</h2>

            <br />

            <table class="auto-style10" border="1">
                <tr>
                    <td class="auto-style4">Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td rowspan="5" class="auto-style11">
                        Time Table:<asp:Image ID="Image1" runat="server" Height="175px" Width="292px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                    
                </tr>
               
                <tr>
                    <td class="auto-style4">Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | <asp:Label ID="Label4" runat="server"></asp:Label>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style4">Father&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style4">DOB&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | <asp:Label ID="Label6" runat="server"></asp:Label>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style4">DOJ</td>
                    <td class="auto-style11">
                        <asp:Label ID="Label8" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Qualification</td>
                    <td class="auto-style11">
                        <asp:Label ID="Label9" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Branch</td>
                    <td class="auto-style11">
                        <asp:Label ID="Label10" runat="server"></asp:Label>
                    </td>
                </tr>
               
                <tr>
                    <td class="auto-style4">Job</td>
                    <td class="auto-style11">
                        <asp:Label ID="Label11" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Contact</td>
                    <td class="auto-style11">
                        <asp:Label ID="Label12" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Address</td>
                    <td class="auto-style11">
                        <asp:Label ID="Label13" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Salary</td>
                    <td class="auto-style11">
                        <asp:Label ID="Label14" runat="server"></asp:Label>
                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style4">Assign you in the of Year</td>
                    <td class="auto-style11">
                        <asp:Label ID="Label15" runat="server"></asp:Label>
                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style4">Section</td>
                    <td class="auto-style11">
                        <asp:Label ID="Label16" runat="server"></asp:Label>
                    </td>
                </tr>
                
                
                
                </table>

        </div>
    </form>
</body>
</html>
