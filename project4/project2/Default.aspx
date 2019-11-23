 <%--*****************************************************************************
     Date             Name              Comments
     11/8/2019       Ashley Provolt     Created Home page and add master page.
                                        
     *****************************************************************************--%>
<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="project2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>CD Inventory</h1>
     
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Welcome</h2>
          <p>You can long in or register. If you do not have an account please register. If you do have an account log in. From there you can manage your account. You can also see the 
              Borrower, CD and artist sites and in each one you can see the information saved. You will also be able to update, insert and delete. 
          </p>
        </div>

    </div>

</asp:Content>
