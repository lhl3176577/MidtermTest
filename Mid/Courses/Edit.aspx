﻿<%@ Page Title="CoursEdit" Language="C#" MasterPageFile="~/good.Master" CodeBehind="Edit.aspx.cs" Inherits="Mid.Courses.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="myMainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="Mid.Cours" DefaultMode="Edit" DataKeyNames="id"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Cours with id <%: Request.QueryString["id"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit Cours</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="CourseName" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="CourseDescription" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="CourseCostFields" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="CourseID" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
							<asp:Button runat="server" ID="UpdateButton" CommandName="Update" Text="Update" CssClass="btn btn-primary" />
							<asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </EditItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

