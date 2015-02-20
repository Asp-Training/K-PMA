<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserLV1.aspx.cs" Inherits="KatalytiPMA.UserLV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <a runat="server" href="~/AddUserLV" cssclass="">Add</a>
   <a runat="server" href="~/" cssclass="">Update</a>
   <a runat="server" href="~/DeleteUserLV" cssclass="">Delete</a>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="user_id" HeaderText="user_id" SortExpression="user_id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="email_id" HeaderText="email_id" SortExpression="email_id" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
            <asp:CheckBoxField DataField="active" HeaderText="active" SortExpression="active" />
        </Columns>
    </asp:GridView>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            user_id:
            <asp:TextBox ID="user_idTextBox" runat="server" Text='<%# Bind("user_id") %>' />
            <br />
            name:
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />
            email_id:
            <asp:TextBox ID="email_idTextBox" runat="server" Text='<%# Bind("email_id") %>' />
            <br />
            password:
            <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
            <br />
            role:
            <asp:TextBox ID="roleTextBox" runat="server" Text='<%# Bind("role") %>' />
            <br />
            active:
            <asp:CheckBox ID="activeCheckBox" runat="server" Checked='<%# Bind("active") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            user_id:
            <asp:TextBox ID="user_idTextBox" runat="server" Text='<%# Bind("user_id") %>' />
            <br />
            name:
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />
            email_id:
            <asp:TextBox ID="email_idTextBox" runat="server" Text='<%# Bind("email_id") %>' />
            <br />
            password:
            <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
            <br />
            role:
            <asp:TextBox ID="roleTextBox" runat="server" Text='<%# Bind("role") %>' />
            <br />
            active:
            <asp:CheckBox ID="activeCheckBox" runat="server" Checked='<%# Bind("active") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            user_id:
            <asp:Label ID="user_idLabel" runat="server" Text='<%# Bind("user_id") %>' />
            <br />
            name:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
            <br />

            email_id:
            <asp:Label ID="email_idLabel" runat="server" Text='<%# Bind("email_id") %>' />
            <br />
            password:
            <asp:Label ID="passwordLabel" runat="server" Text='<%# Bind("password") %>' />
            <br />
            role:
            <asp:Label ID="roleLabel" runat="server" Text='<%# Bind("role") %>' />
            <br />
            active:
            <asp:CheckBox ID="activeCheckBox" runat="server" Checked='<%# Bind("active") %>' Enabled="false" />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [UserMgnt] WHERE [Id] = @Id" InsertCommand="INSERT INTO [UserMgnt] ([user_id], [name], [email_id], [password], [role], [active]) VALUES (@user_id, @name, @email_id, @password, @role, @active)" SelectCommand="SELECT * FROM [UserMgnt]" UpdateCommand="UPDATE [UserMgnt] SET [user_id] = @user_id, [name] = @name, [email_id] = @email_id, [password] = @password, [role] = @role, [active] = @active WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="user_id" Type="Int32" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="email_id" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="role" Type="String" />
            <asp:Parameter Name="active" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="user_id" Type="Int32" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="email_id" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="role" Type="String" />
            <asp:Parameter Name="active" Type="Boolean" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
   <h2>List of Users</h2>
        
</asp:Content>
