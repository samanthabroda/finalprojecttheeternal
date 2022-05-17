<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentLogOutConfirmation.aspx.cs" Inherits="finalprojecteternal.StudentLogOutConfirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script type = "text/javascript" >
   function preventBack(){window.history.forward();}
    setTimeout("preventBack()", 0);
    window.onunload=function(){null};
    </script>
    <link rel="stylesheet" href="Style.css">
    <title></title>
</head>

<header>
  <nav am-layout="horizontal">
  <a href="HomePage.aspx">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <a href="FAQPage.aspx">FAQ</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <a href="#">My Profile</a>&nbsp;&nbsp;
      

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


      <div class="dropdown">
    <button class="dropbtn">Manage Users
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
        <a href="ViewStudents.aspx">View All Students</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="UserEntry.aspx">Add Users</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <a href="DeleteUser.aspx">Delete Users</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
  </div>


  </nav>
</header>

<body>
    <p>
        <br />
    </p>
    <p>
        Are you sure you want to log out?</p>
    <form id="form1" runat="server">
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Yes, log me out" />
        </p>
        <div>
        </div>
    </form>
</body>
</html>