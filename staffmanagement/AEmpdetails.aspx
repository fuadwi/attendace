<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AEmpdetails.aspx.cs" Inherits="staffmanagement.Empdetails" %>

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
            width: 75%;
            height: 34px;
        }
        .auto-style2 {
            width: 198px;
        }
        .auto-style3 {
            width: 67%;
            height: 586px;
        }
        .auto-style4 {
            width: 328px;
        }
        .auto-style5 {
            width: 328px;
            height: 31px;
        }
        .auto-style7 {
            color: #FF0000;
        }
        .auto-style8 {
            width: 365px;
        }
        .auto-style9 {
            width: 328px;
            height: 36px;
        }
        .auto-style10 {
            width: 582px;
        }
        .auto-style11 {
            left: 4px;
            top: 0px;
            width: 77%;
            height: 800px;
        }
        .auto-style12 {
            left: 3px;
            top: 0px;
            width: 328px;
            height: 69px;
        }
        .auto-style13 {
            width: 365px;
            height: 69px;
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
               <li class="auto-style6"><a class="active" href="AHome.aspx">Home</a></li>
               <li class="auto-style5"><a href="AEmpregister.aspx">Employee Register</a>
                <ul>
                    <li><a href="AEmpupdate.aspx">Updata Data</a></li>
                    <li><a href="AEmpdetails.aspx">Details</a></li>
                    <li><a href="AEmpsi.aspx">Salary Information</a></li>
                </ul>
                </li>
                <li class="auto-style4"><a href="Aattendance.aspx">Attendance</a></li>
                <li class="auto-style4"><a href="Asalary.aspx">Salary</a></li>
                <li class="auto-style4"><a href="Aleave.aspx">Leave</a></li>
                 <li class="auto-style5"><a href="Adi.aspx">Daily Info</a>
                <ul>
                    <li><a href="Aoi.aspx">Others Daily Info</a></li>
                    
                </ul>
                </li>
                 <li class="auto-style3"><a href="Adminpwd.aspx">Change Password</a>
                     <ul>
                 <li class="auto-style2"><a href="Login.aspx">Logout</a></li>
                   </ul>  </li>
            </ul>
        </div>
        <div>
            <br /><h2>&nbsp;</h2>
            <h2>Details of Employee</h2>
            <table class="auto-style1" border="1" >
                <tr>
                    <td class="auto-style2">Enter Employee Email Id </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Email" Width="390px"></asp:TextBox>
&nbsp;
&nbsp;<asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style7"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <table class="auto-style11" border="1">
                <tr>
                    <td class="auto-style4">Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td rowspan="6" class="auto-style8">
                        Time Table:<asp:Image ID="Image1" runat="server" Height="150px" Width="259px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style5">Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;| <asp:Label ID="Label3" runat="server"></asp:Label>
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
                    <td class="auto-style8">
                        <asp:Label ID="Label8" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Qualification</td>
                    <td class="auto-style8">
                        <asp:Label ID="Label9" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Branch</td>
                    <td class="auto-style8">
                        <asp:Label ID="Label10" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Job</td>
                    <td class="auto-style8">
                        <asp:Label ID="Label11" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Contact</td>
                    <td class="auto-style8">
                        <asp:Label ID="Label12" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Address</td>
                    <td class="auto-style8">
                        <asp:Label ID="Label13" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Salary</td>
                    <td class="auto-style8">
                        <asp:Label ID="Label14" runat="server"></asp:Label>
                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style4">Engineering Year</td>
                    <td class="auto-style8">
                        <asp:Label ID="Label23" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">Section</td>
                    <td class="auto-style13">
                        <asp:Label ID="Label24" runat="server"></asp:Label>
                    </td>
                </tr>
                </table>
            <br />

        </div>
    </form>
</body>
</html>
