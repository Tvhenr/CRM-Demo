<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="sisäänkirjautuminen.aspx.cs" Inherits="WebApplication1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col-12">
                                <h3 class="text-center">Sisäänkirjautuminen</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <label>Käyttäjätunnus</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" 
                                        runat="server" placeholder="Käyttäjätunnus"></asp:TextBox>
                                </div>

                                <label>Salasana</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" 
                                        runat="server" placeholder="Salasana" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <asp:Button class="btn btn-primary btn-block btn-md" 
                                        ID="Button1" runat="server" Text="Kirjaudu" OnClick="Button1_Click" />
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <a href="rekisteröinti.aspx">
                                        <input class="btn btn-success btn-block btn-md" 
                                            id="Button2" type="button" value="Rekisteröidy" />
                                    </a>
                                </div>
                            </div>    
                        </div>
                    </div>
                <a href="etusivu.aspx">Etusivulle</a>
            </div>            
        </div>
    </div>
</div>
</asp:Content>
