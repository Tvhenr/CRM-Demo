<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="profiili.aspx.cs" Inherits="WebApplication1.profiili" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <h4 class="text-center">Tiedot</h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Etunimi ja sukunimii</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" 
                                        runat="server" placeholder="Etunimi ja sukunimi"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Syntymäpäivä</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" 
                                         runat="server" placeholder="pp.kk.yyyy" TextMode="Date"></asp:TextBox>
                                </div>                                
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Osoite</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" 
                                        runat="server" placeholder="koko osoite"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Postinumero</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" 
                                         runat="server" placeholder="" TextMode="Number"></asp:TextBox>
                                </div>                                
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Kaupunki</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" 
                                        runat="server" placeholder=""></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Maa</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" 
                                         runat="server" placeholder=""></asp:TextBox>
                                </div>                                
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Puhelinnumero</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" 
                                        runat="server" placeholder="" TextMode="Phone"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Sähköpostiosoite</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" 
                                         runat="server" placeholder="" TextMode="Email"></asp:TextBox>
                                </div>                                
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Käyttäjätunnus</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox9" 
                                        runat="server" placeholder=""
                                        ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Vanha salasana</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox10" 
                                        runat="server" placeholder="" TextMode="Password"
                                        ReadOnly="True"></asp:TextBox>
                                </div>                                
                            </div>
                            <div class="col-md-4">
                                <label>Uusi salasana</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox11" 
                                        runat="server" placeholder="" TextMode="Password"
                                        ></asp:TextBox>
                                </div>                                
                            </div>

                            <div class="col-md-8 mx-auto">                        
                                <div class="form-group">
                                    <asp:Button class="btn btn-primary btn-block btn-lg" 
                                        ID="Button1" runat="server" Text="Päivitä" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <h4 class="text-center">Tiedot</h4>                                
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>                                
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" 
                                    ID="GridView1" runat="server"></asp:GridView>                         
                            </div>
                        </div>                        
                    </div>
                </div>
            </div>

        </div>

    </div>

</asp:Content>
