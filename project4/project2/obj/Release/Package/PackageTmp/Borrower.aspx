 <%--*****************************************************************************
     Date             Name              Comments
     11/8/2019       Ashley Provolt     Created borrower page and add master page.
                                        
     *****************************************************************************--%>
<%@ Page Title="borrower" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Borrower.aspx.cs" 
    Inherits="project2.Borrower"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="jumbotron">
        <h2> Borrower</h2> 
     </div>
    <div >
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="borrower_ID" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CausesValidation="false"/>
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="borrower_FNameLabel" runat="server" Text='<%# Eval("borrower_FName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="borrower_LNameLabel" runat="server" Text='<%# Eval("borrower_LName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="borrower_IDLabel" runat="server" Text='<%# Eval("borrower_ID") %>' />
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
                        <asp:TextBox ID="borrower_FNameTextBox" runat="server" Text='<%# Bind("borrower_FName") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="Enter first name" ControlToValidate="borrower_FNameTextBox" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="borrower_LNameTextBox" runat="server" Text='<%# Bind("borrower_LName") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ErrorMessage="Enter last name" ControlToValidate="borrower_LNameTextBox" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:Label ID="borrower_IDLabel1" runat="server" Text='<%# Eval("borrower_ID") %>' />
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
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" ValidationGroup="InsertValidationControls"  />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" CausesValidation="false" />
                    </td>
                    <td>
                        <asp:TextBox ID="borrower_FNameTextBox" runat="server" Text='<%# Bind("borrower_FName") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="InsertValidationControls" 
                            ErrorMessage="Enter first name" ControlToValidate="borrower_FNameTextBox" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="borrower_LNameTextBox" runat="server" Text='<%# Bind("borrower_LName") %>' />
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="InsertValidationControls" 
                            ErrorMessage="Enter last name" ControlToValidate="borrower_LNameTextBox" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CausesValidation="false"/>
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="borrower_FNameLabel" runat="server" Text='<%# Eval("borrower_FName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="borrower_LNameLabel" runat="server" Text='<%# Eval("borrower_LName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="borrower_IDLabel" runat="server" Text='<%# Eval("borrower_ID") %>' />
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
                                    <th runat="server">first name</th>
                                    <th runat="server">Last name</th>
                                    <th runat="server">borrower ID</th>
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
                        <asp:Label ID="borrower_FNameLabel" runat="server" Text='<%# Eval("borrower_FName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="borrower_LNameLabel" runat="server" Text='<%# Eval("borrower_LName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="borrower_IDLabel" runat="server" Text='<%# Eval("borrower_ID") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:disk_inventoryapConnectionString %>" 
            DeleteCommand="execute sp_Deleteborrower @borrower_ID" 
            InsertCommand="execute sp_insBorrower @borrower_FName, @borrower_LName"
            SelectCommand="SELECT [borrower_FName], [borrower_LName], [borrower_ID] FROM [borrower] ORDER BY [borrower_LName], [borrower_FName]" 
            UpdateCommand="execute sp_UPborrower @borrower_ID, @borrower_FName, @borrower_LName">
            <DeleteParameters>
                <asp:Parameter Name="borrower_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="borrower_FName" Type="String" />
                <asp:Parameter Name="borrower_LName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="borrower_FName" Type="String" />
                <asp:Parameter Name="borrower_LName" Type="String" />
                <asp:Parameter Name="borrower_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br /><br />
       <%--  Frist Name: 
        <asp:TextBox ID="fname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a first name" ControlToValidate="fname" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
        <br /><br />
        Last Name:
        <asp:TextBox ID="lname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lname" ErrorMessage="Please enter a last name" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
        <br />
        <br />
        Phone number:
        <asp:TextBox ID="Phone" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Phone" CssClass="text-danger" ErrorMessage="Please enter a phone number."></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Phone" CssClass="text-danger" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">Use the format 999-999-9999</asp:RegularExpressionValidator>
        <br /><br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" CausesValidation="False" />
        <br /><br />

        <asp:Label ID="lblMessage" runat="server" CssClass="text-info"></asp:Label>--%>
        <br /><br />
    </div>
</asp:Content>
