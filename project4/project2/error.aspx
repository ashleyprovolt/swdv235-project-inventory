<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="error.aspx.cs" Inherits="project2.error" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <h1 class="text-danger">An error has occurred</h1>
    <div class="alert alert-danger">
        <p><asp:Label ID="lblError" Text="Pleace log in." runat="server"></asp:Label></p>
        <br /><br />
        <asp:Button ID="btnReturn" runat="server" Text="Return to Home Page" 
        PostBackUrl="~/Default.aspx"  />
    </div>
    
</asp:Content>
