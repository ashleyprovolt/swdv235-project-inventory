 <%--*****************************************************************************
     Date             Name              Comments
     11/8/2019       Ashley Provolt     Created CD page and add master page.
     11/22/2019                         Added some more information.          
     *****************************************************************************--%>
<%@ Page Title="CD" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CD.aspx.cs" Inherits="project2.CD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <div class="jumbotron">
        <h2>CD</h2> 
     </div>
     <div class="row">
        <div class="col-md-4">
            <h2>Welcome!!</h2>
            <p>Here you will be able to see what CD's we have.</p>
            <p>If you choose a diffrent genre when inserting or updating it will save in that genre. Go look there.</p>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="description" DataValueField="genre_ID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:disk_inventoryapConnectionString %>" SelectCommand="SELECT [genre_ID], [description] FROM [genre]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="CD_ID" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <tr style="background-color:#FFF8DC;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CausesValidation="false"/>
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="CD_NameLabel" runat="server" Text='<%# Eval("CD_Name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="release_DateLabel" runat="server" Text='<%# Eval("release_Date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="genre_IDLabel" runat="server" Text='<%# Eval("genre_ID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="status_IDLabel" runat="server" Text='<%# Eval("status_ID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CD_IDLabel" runat="server" Text='<%# Eval("CD_ID") %>' />
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
                            <asp:TextBox ID="CD_NameTextBox" runat="server" Text='<%# Bind("CD_Name") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter in CD name."
                               ControlToValidate="CD_NameTextBox" Display="Dynamic" ></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="release_DateTextBox" runat="server" Text='<%# Bind("release_Date") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter in Release date."
                               ControlToValidate="release_DateTextBox" Display="Dynamic" ></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Must be valid date" 
                                ControlToValidate="release_DateTextBox" Display="Dynamic" type="Date"
                                MaximumValue="12/31/9999" MinimumValue="01/01/0001"></asp:RangeValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="genre_IDTextBox" runat="server" Text='<%# Bind("genre_ID") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter in genre."
                               ControlToValidate="genre_IDTextBox" Display="Dynamic" ></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="status_IDTextBox" runat="server" Text='<%# Bind("status_ID") %>' />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter in CD status."
                               ControlToValidate="status_IDTextBox" Display="Dynamic" ></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:Label ID="CD_IDLabel1" runat="server" Text='<%# Eval("CD_ID") %>' />
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
                            <asp:TextBox ID="CD_NameTextBox" runat="server" Text='<%# Bind("CD_Name") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter in CD name."
                               ControlToValidate="CD_NameTextBox" Display="Dynamic" ValidationGroup="InsertValidationControls" ></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="release_DateTextBox" runat="server" Text='<%# Bind("release_Date") %>' />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter in Release date."
                               ControlToValidate="release_DateTextBox" Display="Dynamic" ValidationGroup="InsertValidationControls" ></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Must be valid date" 
                                ControlToValidate="release_DateTextBox" Display="Dynamic" type="Date"
                                MaximumValue="12/31/9999" MinimumValue="01/01/0001" ValidationGroup="InsertValidationControls"></asp:RangeValidator>
                        </td>
                        <td>
                           <%-- <asp:TextBox ID="genre_IDTextBox" runat="server" Text='<%# Bind("genre_ID") %>' />--%>
                            <asp:DropDownList ID="genre_IDTextBox" runat="server" Text='<%# Bind("genre_ID") %>' DataSourceID="SqlDataSource2" 
                                DataValueField="genre_ID"  DataTextField="description"  ></asp:DropDownList>
                        </td>
                        <td>
                            <%--<asp:TextBox ID="status_IDTextBox" runat="server" Text='<%# Bind("status_ID") %>' />--%>
                              <asp:DropDownList ID="status_IDTextBox" runat="server" Text='<%# Bind("status_ID") %>'
                                  DataSourceID="SqlDataSource3" DataTextField="description" DataValueField="status_ID">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server"
                             ConnectionString="<%$ ConnectionStrings:disk_inventoryapConnectionString %>" 
                              SelectCommand="SELECT [status_ID], [description] FROM [status]"></asp:SqlDataSource>
                             
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
                            <asp:Label ID="CD_NameLabel" runat="server" Text='<%# Eval("CD_Name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="release_DateLabel" runat="server" Text='<%# Eval("release_Date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="genre_IDLabel" runat="server" Text='<%# Eval("genre_ID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="status_IDLabel" runat="server" Text='<%# Eval("status_ID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CD_IDLabel" runat="server" Text='<%# Eval("CD_ID") %>' />
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
                                        <th runat="server">CD Name</th>
                                        <th runat="server">release Date</th>
                                        <th runat="server">genre ID</th>
                                        <th runat="server">status ID</th>
                                        <th runat="server">CD_ID</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                <asp:DataPager ID="DataPager1" runat="server" PageSize="6">
                                    <Fields>                                       
                                        <asp:NumericPagerField  />                                        
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
                            <asp:Label ID="CD_NameLabel" runat="server" Text='<%# Eval("CD_Name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="release_DateLabel" runat="server" Text='<%# Eval("release_Date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="genre_IDLabel" runat="server" Text='<%# Eval("genre_ID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="status_IDLabel" runat="server" Text='<%# Eval("status_ID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CD_IDLabel" runat="server" Text='<%# Eval("CD_ID") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:disk_inventoryapConnectionString %>"
                DeleteCommand="execute sp_deleteCD @CD_ID" 
                InsertCommand="execute sp_insCD @CD_Name, @release_Date, @genre_ID, @status_ID" 
                SelectCommand="SELECT [CD_Name], [release_Date], [genre_ID], [status_ID], [CD_ID] FROM [CD] WHERE ([genre_ID] = @genre_ID) ORDER BY [CD_Name]" 
                UpdateCommand="execute sp_UPCD  @CD_ID, @CD_Name, @release_Date, @genre_ID, @status_ID">
                <DeleteParameters>
                    <asp:Parameter Name="CD_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CD_Name" Type="String" />
                    <asp:Parameter Name="release_Date" Type="DateTime" />
                    <asp:Parameter Name="genre_ID" Type="Int32" />
                    <asp:Parameter Name="status_ID" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="genre_ID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CD_Name" Type="String" />
                    <asp:Parameter Name="release_Date" Type="DateTime" />
                    <asp:Parameter Name="genre_ID" Type="Int32" />
                    <asp:Parameter Name="status_ID" Type="Int32" />
                    <asp:Parameter Name="CD_ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />

            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />

    </div>
         </div>
</asp:Content>
