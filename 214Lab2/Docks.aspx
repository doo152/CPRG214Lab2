<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Docks.aspx.cs" Inherits="_214Lab2.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Docks" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h3>Available Docks and Slips</h3>
    <div class="row align-content-center"><span class="m-4">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource0" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="ID">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />                
                <asp:BoundField DataField="ID" ItemStyle-CssClass="hiddencol" HeaderStyle-CssClass="hiddencol" HeaderText="ID" SortExpression="ID" InsertVisible="False" ReadOnly="True"/>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:CheckBoxField DataField="WaterService" HeaderText="WaterService" SortExpression="WaterService" />
                <asp:CheckBoxField DataField="ElectricalService" HeaderText="ElectricalService" SortExpression="ElectricalService" />
            </Columns>
        </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource0" runat="server" ConnectionString="<%$ ConnectionStrings:MarinaConnectionString %>" 
            SelectCommand="SELECT [ID], [Name], [WaterService], [ElectricalService] FROM [Dock]">            
           </asp:SqlDataSource>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MarinaConnectionString %>" 
            SelectCommand="SELECT ID AS [SLIP ID], WIDTH AS [SLIP WIDTH] , LENGTH AS [SLIP LENGTH]
                            FROM SLIP  Where DockID in (Select ID from Dock Where ID=@ID)
                            And ID NOT IN (SELECT SLIPID FROM LEASE)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ID" DbType="Int32" Direction="Input" QueryStringField="DockID" ConvertEmptyStringToNull="true" />
            </SelectParameters>

        </asp:SqlDataSource>
        </span>
        <span class="m-4">
        <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource1">
        </asp:GridView>
        </span>
        
        <br />
    </div>

</asp:Content>

