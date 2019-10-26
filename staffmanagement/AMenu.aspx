<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AMenu.aspx.cs" Inherits="staffmanagement.Menu" %>

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
    </style>
</head>
<body style="height: 79px">
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
    </form>
</body>
</html>
