<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="rekisteröinti.aspx.cs" Inherits="WebApplication1.Rekisteröinti" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col-12">
                                <h4 class="text-center">Rekisteröityminen</h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Käyttäjätunnus</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox9" 
                                        runat="server" placeholder=""></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Salasana</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox10" 
                                         runat="server" placeholder="" TextMode="Password"></asp:TextBox>
                                </div>                                
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Etunimi ja sukunimi</label>
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
                                    <asp:TextBox class="form-control" ID="TextBox3" 
                                        runat="server" placeholder="koko osoite"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Postinumero</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox4" 
                                         runat="server" placeholder="" TextMode="Number"></asp:TextBox>
                                </div>                                
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Kaupunki</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox5" 
                                        runat="server" placeholder=""></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Maa</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox6" 
                                         runat="server" placeholder=""></asp:TextBox>
                                </div>                                
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Puhelinnumero</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" 
                                        runat="server" placeholder=""></asp:TextBox>
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
                            <div class="col-md-6">
                                <div class="form-group center">
                                    <asp:Button class="btn btn-success btn-block btn-md" 
                                        ID="Button1" runat="server" Text="Rekisteröidy" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <a href="etusivu.aspx">Etusivulle</a>
            </div>            
        </div>
    </div>

</asp:Content>
