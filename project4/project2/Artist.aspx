 <%--*****************************************************************************
     Date             Name              Comments
     11/8/2019       Ashley Provolt     Created artist page and add master page.
                                        
     *****************************************************************************--%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Artist.aspx.cs" Inherits="project2.Artist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h2>Artist</h2> 
     </div>
     <div class="row">
        <div class="col-md-4">
            <h2>Wlecome to artist page!!</h2>
            <p>Here you can find what artist we have.</p>
             <p>If you choose a diffrent arist type when inserting or updating it will save in that artist type. Go look there.</p>
    </div>
         <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="artist_description" DataValueField="artist_type_ID" AutoPostBack="True"></asp:DropDownList>
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:disk_inventoryapConnectionString2 %>" SelectCommand="SELECT [artist_type_ID], [artist_description] FROM [artist_type] ORDER BY [artist_description]"></asp:SqlDataSource>
         <br />
         <br />
             <FooterStyle BackColor="#CCCC99" />
             <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
             <RowStyle BackColor="#F7F7DE" />
             <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#FBFBF2" />
             <SortedAscendingHeaderStyle BackColor="#848384" />
             <SortedDescendingCellStyle BackColor="#EAEAD3" />
             <SortedDescendingHeaderStyle BackColor="#575357" />
         </asp:GridView>
         <br />
         <asp:ListView ID="ListView1" runat="server" DataKeyNames="artist_ID" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
             <AlternatingItemTemplate>
                 <tr style="background-color:#FFF8DC;">
                     <td>
                         <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete"  CausesValidation="false" />
                         <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                     </td>
                     <td>
                         <asp:Label ID="artist_FNameLabel" runat="server" Text='<%# Eval("artist_FName") %>' />
                     </td>
                     <td>
                         <asp:Label ID="artist_LNameLabel" runat="server" Text='<%# Eval("artist_LName") %>' />
                     </td>
                     <td>
                         <asp:Label ID="artist_type_IDLabel" runat="server" Text='<%# Eval("artist_type_ID") %>' />
                     </td>
                     <td>
                         <asp:Label ID="artist_IDLabel" runat="server" Text='<%# Eval("artist_ID") %>' />
                     </td>
                 </tr>
             </AlternatingItemTemplate>
             <EditItemTemplate>
                 <tr style="background-color:#008A8C;color: #000000;">
                     <td>
                         <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                         <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CausesValidation="false" />
                     </td>
                     <td>
                         <asp:TextBox ID="artist_FNameTextBox" runat="server" Text='<%# Bind("artist_FName") %>' />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                             ErrorMessage="Please enter in a name." 
                             ControlToValidate="artist_FNameTextBox" Display="Dynamic" ></asp:RequiredFieldValidator>
                     </td>
                     <td>
                         <asp:TextBox ID="artist_LNameTextBox" runat="server" Text='<%# Bind("artist_LName") %>' />
                     </td>
                     <td>
                         <asp:TextBox ID="artist_type_IDTextBox" runat="server" Text='<%# Bind("artist_type_ID") %>' />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic"
                             ErrorMessage="RequiredFieldValidator" ControlToValidate="artist_type_IDTextBox"></asp:RequiredFieldValidator>
                     </td>
                     <td>
                         <asp:Label ID="artist_IDLabel1" runat="server" Text='<%# Eval("artist_ID") %>' />
                     </td>
                 </tr>
             </EditItemTemplate>
             <EmptyDataTemplate>
                 <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                     <tr>
                         <td>No data was returned.</td>
                     </tr>
                 </table>
             </EmptyDataTemplate>
             <InsertItemTemplate>
                 <tr style="">
                     <td>
                         <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" ValidationGroup="InsertValidationControls"/>
                         <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" CausesValidation="false"/>
                     </td>
                     <td>
                         <asp:TextBox ID="artist_FNameTextBox" runat="server" Text='<%# Bind("artist_FName") %>' />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="artist_FNameTextBox" 
                             runat="server" ErrorMessage="Pleace enter artist name." display="Dynamic" ValidationGroup="InsertValidationControls" ></asp:RequiredFieldValidator>
                     </td>
                     <td>
                         <asp:TextBox ID="artist_LNameTextBox" runat="server" Text='<%# Bind("artist_LName") %>' />
                     </td>
                     <td>
                         <%--<asp:TextBox ID="artist_type_IDTextBox" runat="server" Text='<%# Bind("artist_type_ID") %>' />--%>
                         <asp:DropDownList ID="artist_type_IDTextBox" runat="server" Text='<%# Bind("artist_type_ID") %>' 
                             DataSourceID="SqlDataSource2" DataTextField="artist_description" DataValueField="artist_type_ID"></asp:DropDownList>
                     </td>
                     <td>&nbsp;</td>
                 </tr>
             </InsertItemTemplate>
             <ItemTemplate>
                 <tr style="background-color:#DCDCDC;color: #000000;">
                     <td>
                         <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CausesValidation="false" />
                         <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                     </td>
                     <td>
                         <asp:Label ID="artist_FNameLabel" runat="server" Text='<%# Eval("artist_FName") %>' />
                     </td>
                     <td>
                         <asp:Label ID="artist_LNameLabel" runat="server" Text='<%# Eval("artist_LName") %>' />
                     </td>
                     <td>
                         <asp:Label ID="artist_type_IDLabel" runat="server" Text='<%# Eval("artist_type_ID") %>' />
                     </td>
                     <td>
                         <asp:Label ID="artist_IDLabel" runat="server" Text='<%# Eval("artist_ID") %>' />
                     </td>
                 </tr>
             </ItemTemplate>
             <LayoutTemplate>
                 <table runat="server">
                     <tr runat="server">
                         <td runat="server">
                             <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                 <tr runat="server" style="background-color:#ffffff;color: #000000;">
                                     <th runat="server"></th>
                                     <th runat="server">artist first name</th>
                                     <th runat="server">artist last name</th>
                                     <th runat="server">artist type ID</th>
                                     <th runat="server">artist ID</th>
                                 </tr>
                                 <tr id="itemPlaceholder" runat="server">
                                 </tr>
                             </table>
                         </td>
                     </tr>
                     <tr runat="server">
                         <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                             <asp:DataPager ID="DataPager1" runat="server">
                                 <Fields>
                         
                                     <asp:NumericPagerField />
                                 
                                 </Fields>
                             </asp:DataPager>
                         </td>
                     </tr>
                 </table>
             </LayoutTemplate>
             <SelectedItemTemplate>
                 <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                     <td>
                         <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CausesValidation="false"/>
                         <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                     </td>
                     <td>
                         <asp:Label ID="artist_FNameLabel" runat="server" Text='<%# Eval("artist_FName") %>' />
                     </td>
                     <td>
                         <asp:Label ID="artist_LNameLabel" runat="server" Text='<%# Eval("artist_LName") %>' />
                     </td>
                     <td>
                         <asp:Label ID="artist_type_IDLabel" runat="server" Text='<%# Eval("artist_type_ID") %>' />
                     </td>
                     <td>
                         <asp:Label ID="artist_IDLabel" runat="server" Text='<%# Eval("artist_ID") %>' />
                     </td>
                 </tr>
             </SelectedItemTemplate>
         </asp:ListView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:disk_inventoryapConnectionString %>"
             DeleteCommand="execute sp_DeleteArtist @artist_ID"
             InsertCommand="execute sp_insArtist @artist_type_ID, @artist_FName, @artist_LName"
             SelectCommand="SELECT [artist_FName], [artist_LName], [artist_type_ID], [artist_ID] FROM [artist] WHERE ([artist_type_ID] = @artist_type_ID) ORDER BY [artist_LName], [artist_FName]" 
             UpdateCommand="execute sp_UPArtist @artist_ID, @artist_type_ID, @artist_FName, @artist_LName">

             <DeleteParameters>
                 <asp:Parameter Name="artist_ID" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="artist_FName" Type="String" />
                 <asp:Parameter Name="artist_LName" Type="String" />
                 <asp:Parameter Name="artist_type_ID" Type="Int32" />
             </InsertParameters>
             <SelectParameters>
                 <asp:ControlParameter ControlID="DropDownList1" Name="artist_type_ID" PropertyName="SelectedValue" Type="Int32" />
             </SelectParameters>
             <UpdateParameters>
                 <asp:Parameter Name="artist_FName" Type="String" />
                 <asp:Parameter Name="artist_LName" Type="String" />
                 <asp:Parameter Name="artist_type_ID" Type="Int32" />
                 <asp:Parameter Name="artist_ID" Type="Int32" />
             </UpdateParameters>
         </asp:SqlDataSource>
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <asp:Label ID="Label1" runat="server" CssClass="alert-info"></asp:Label>
         </div>
</asp:Content>
