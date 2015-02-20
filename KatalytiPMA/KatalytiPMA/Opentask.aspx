<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Opentask.aspx.cs" Inherits="KatalytiPMA.Opentask" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="task_name" HeaderText="task_name" SortExpression="task_name" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            <asp:BoundField DataField="assigned_to" HeaderText="assigned_to" SortExpression="assigned_to" />
            <asp:BoundField DataField="begin_date" HeaderText="begin_date" SortExpression="begin_date" />
            <asp:BoundField DataField="end_date" HeaderText="end_date" SortExpression="end_date" />
            <asp:BoundField DataField="milestone" HeaderText="milestone" SortExpression="milestone" />
            <asp:BoundField DataField="project" HeaderText="project" SortExpression="project" />
            <asp:TemplateField HeaderText="status" SortExpression="status">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="status_value" DataValueField="status_value" SelectedValue='<%# Bind("status") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="notes" HeaderText="notes" SortExpression="notes" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Task] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Task] ([task_name], [description], [assigned_to], [begin_date], [end_date], [milestone], [project], [status], [notes]) VALUES (@task_name, @description, @assigned_to, @begin_date, @end_date, @milestone, @project, @status, @notes)" SelectCommand="SELECT * FROM [Task] WHERE ([status] = @status)" UpdateCommand="UPDATE [Task] SET [task_name] = @task_name, [description] = @description, [assigned_to] = @assigned_to, [begin_date] = @begin_date, [end_date] = @end_date, [milestone] = @milestone, [project] = @project, [status] = @status, [notes] = @notes WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="task_name" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="assigned_to" Type="String" />
            <asp:Parameter DbType="Date" Name="begin_date" />
            <asp:Parameter DbType="Date" Name="end_date" />
            <asp:Parameter Name="milestone" Type="String" />
            <asp:Parameter Name="project" Type="String" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="notes" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="started" Name="status" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="task_name" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="assigned_to" Type="String" />
            <asp:Parameter DbType="Date" Name="begin_date" />
            <asp:Parameter DbType="Date" Name="end_date" />
            <asp:Parameter Name="milestone" Type="String" />
            <asp:Parameter Name="project" Type="String" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="notes" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [status_value] FROM [Status]"></asp:SqlDataSource>
</asp:Content>
