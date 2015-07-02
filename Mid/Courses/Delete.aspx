﻿<%@ Page Title="CoursDelete" Language="C#" MasterPageFile="~/good.Master" CodeBehind="Delete.aspx.cs" Inherits="Mid.Courses.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="myMainContent">
    <div>
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this Cours?</h3>
        <asp:FormView runat="server"
            ItemType="Mid.Cours" DataKeyNames="id"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Cours with id <%: Request.QueryString["id"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete Cours</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>id</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="id" ID="id" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>CourseName</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="CourseName" ID="CourseName" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>CourseDescription</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="CourseDescription" ID="CourseDescription" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>CourseCostFields</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="CourseCostFields" ID="CourseCostFields" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>CourseID</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="CourseID" ID="CourseID" Mode="ReadOnly" />
								</div>
							</div>
                 	<div class="row">
					  &nbsp;
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger" />
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

