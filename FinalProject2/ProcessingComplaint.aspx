﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProcessingComplaint.aspx.cs" Inherits="FinalProject2.ProcessingComplaint" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Processing Complaints</title>
     <link href="Bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link href="Stylesheet/style.css" rel="stylesheet" />
</head>
<body>
      
   <div class="container-fluid">
    <div id="first">
    <img src="Images/logo.jpg" id="logo" class="img-responsive" alt="logo"/>
       <pre id="title">
Adulteration
Complaints
Portal
</pre>
         <asp:HyperLink id="Backlink" runat="server" Text="Logout" NavigateUrl="~/Logout.aspx"></asp:HyperLink>
          <asp:HyperLink id="pagelink" runat="server" Text="View Accepeted Complaint" NavigateUrl="~/AuthorityFirstPage.aspx"></asp:HyperLink>
        
        </div>

         
 </div>

    <form runat="server">
        <asp:GridView runat="server" ID="comprocess" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:TemplateField HeaderText="ComplaintID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ComplaintID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("ComplaintID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="UserID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Details">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# String.Format("ViewComplaints.aspx?ComplaintID={0}", Eval("ComplaintID")) %>' Target="_blank" Text="View"></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Report">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# String.Format("GenerateReport.aspx?ComplaintID={0}", Eval("ComplaintID")) %>' Target="_blank" Text="Generate"></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
    </form>
</body>
</html>
