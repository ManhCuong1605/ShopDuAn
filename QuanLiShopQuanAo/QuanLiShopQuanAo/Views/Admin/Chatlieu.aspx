﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Chatlieu.aspx.cs" Inherits="QuanLiShopQuanAo.Views.Admin.Chatlieu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                 <h3 class="text-center">Chất Liệu</h3>   </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="mb-3">
        <label for="" class="form-label text-success">Mã Chất Liệu</label>
        <input type="text"  placeholder="Mã chất liệu" autocomplete="off" class="form-control" runat="server" id="MachatlieuN"/>
                </div>
                  <div class="mb-3">
        <label for="" class="form-label text-success">Tên Chất Liệu</label>
        <input type="text"  placeholder="Tên chất liệu" autocomplete="off" class="form-control" runat="server" id="Tenchatlieu"/>       
                </div>
              
                <div class="row">
                    <asp:Label runat="server" ID="ErrMsg" class="text-danger text-center"> </asp:Label>
                    <div class="col d-grid"> <asp:Button Text="Update" ID="UpdateBtn"  runat="server" class="btn-warning btn-block btn" OnClick="UpdateBtn_Click" /></div>
                    <div class="col d-grid"> <asp:Button Text="Save" ID="saveBtn" runat="server" class="btn-success btn-block btn" OnClick="saveBtn_Click" /></div>
                    <div class="col d-grid"> <asp:Button Text="Delete" ID="DeleteBtn" runat="server" class="btn-danger btn-block btn" OnClick="DeleteBtn_Click" /></div>
                </div>
            </div>
            <div class="col-md-8">
                   <asp:GridView ID="ChatlieuList" runat="server" Width="849px" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false" AutoGenerateSelectButton="True" OnSelectedIndexChanged="ChatlieuList_SelectedIndexChanged1">
                    <Columns>
                        <asp:BoundField DataField="MaChatLieu" HeaderText="Mã chất liệu" />
                        <asp:BoundField DataField="TenChatLieu" HeaderText="Tên chất liệu" />
                    
                    </Columns>
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="teal" Font-Bold="false" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
