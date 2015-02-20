<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClosedTask.aspx.cs" Inherits="KatalytiPMA.ClosedTask" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Id, task_name, description, assigned_to, begin_date, end_date, milestone, project, status, notes FROM Task WHERE (status = @status)" OnInserting="SqlDataSource1_Inserting">
        <SelectParameters>
            <asp:Parameter DefaultValue="completed" Name="status" Type="String" />
        </SelectParameters>
</asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="Id">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="task_name" HeaderText="task_name" SortExpression="task_name" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            <asp:BoundField DataField="assigned_to" HeaderText="assigned_to" SortExpression="assigned_to" />
            <asp:BoundField DataField="begin_date" HeaderText="begin_date" SortExpression="begin_date" />
            <asp:BoundField DataField="end_date" HeaderText="end_date" SortExpression="end_date" />
            <asp:BoundField DataField="milestone" HeaderText="milestone" SortExpression="milestone" />
            <asp:BoundField DataField="project" HeaderText="project" SortExpression="project" />
            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
            <asp:BoundField DataField="notes" HeaderText="notes" SortExpression="notes" />
        </Columns>
    </asp:GridView>
</asp:Content>
