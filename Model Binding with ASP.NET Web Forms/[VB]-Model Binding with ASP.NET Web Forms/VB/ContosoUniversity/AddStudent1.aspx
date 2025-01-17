﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="AddStudent1.aspx.vb" Inherits="ContosoUniversity.AddStudent1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ValidationSummary ID="ValidationSummary1" ShowModelStateErrors="true" runat="server" />
    <asp:FormView runat="server" ID="addStudentForm"
        ItemType="ContosoUniversity.Models.Student" 
        InsertMethod="addStudentForm_InsertItem" DefaultMode="Insert"
        RenderOuterTable="false" OnItemInserted="addStudentForm_ItemInserted">
        <InsertItemTemplate>
            <fieldset>
                <ol>
                    <asp:DynamicEntity ID="DynamicEntity1" runat="server" Mode="Insert" />
                </ol>
                <asp:Button ID="Button1" runat="server" Text="Insert" CommandName="Insert" />
                <asp:Button ID="Button2" runat="server" Text="Cancel" CausesValidation="false" OnClick="cancelButton_Click" />
            </fieldset>
        </InsertItemTemplate>
    </asp:FormView>
    <br /><br />
    <asp:Label ID="Label5" Text="Using code-behind file" ForeColor="Red" runat="server" />
</asp:Content>
