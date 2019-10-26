<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AEmpupdate.aspx.cs" Inherits="staffmanagement.Echange" %>

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
            height: 25px;
        }
        .auto-style2 {
            width: 152px;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 217px;
        }
        .auto-style5 {
            width: 207px;
        }
        .auto-style6 {
            width: 260px;
        }
        .auto-style7 {
            width: 260px;
            text-align: center;
        }
        .auto-style8 {
            width: 207px;
            text-align: center;
        }
        .auto-style9 {
            color: #FF0000;
        }
        .auto-style10 {
            left: 0px;
            top: 0px;
            width: 454px;
        }
        .auto-style11 {
            left: 4px;
            top: 0px;
            width: 100%;
            height: 305px;
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
               <li class="auto-style5"><a href="AEmpregister.aspx">Employee</a>
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
            <h2>Employee Update Form</h2><br />

            <table class="auto-style1">
                <tr>
                    <td class="auto-style10">Enter Employee Email </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="298px"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" Text="search" OnClick="Button1_Click" />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

            <br />

            <br />

            <table class="auto-style11">
                <tr>
                    <td class="auto-style4">Name</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5">DOJoining</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Email</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                    <td class="auto-style5">Job</td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Contact Number</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5">Branch</td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Qualification</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5">Salary</td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Enter Engineering Year</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox10" runat="server" MaxLength="1" placeholder="4"></asp:TextBox>
                        <span class="auto-style9">(Enter Number only)</span></td>
                    <td class="auto-style5">Enter Which Section </td>
                    <td>
                        <asp:TextBox ID="TextBox11" runat="server" MaxLength="1" Width="119px" placeholder="1"></asp:TextBox>
                        <span class="auto-style9">(Enter Number only)</span></td>
                </tr>
               <tr>
                    <td class="auto-style4" colspan="2">Enter the TimeTable</td>
                    
                    <td class="auto-style5" colspan="2">
                        
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style8">
                        <input id="Reset1" type="reset" value="reset" /></td>
                    <td>
                        <asp:Label ID="Label2" runat="server" ForeColor="Green"></asp:Label>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
