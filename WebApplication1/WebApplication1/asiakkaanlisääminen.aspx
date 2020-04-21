<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="asiakkaanlisääminen.aspx.cs" Inherits="WebApplication1.asikkaidenHallinta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col-12">
                                <h4 class="text-center">Asiakkaan tiedot</h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Henkilötunnus</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" 
                                         runat="server" placeholder="ppkkyyyy-xxxx"></asp:TextBox>
                                </div>                                
                            </div>
                            <div class="col-md-6">
                                <label>Etunimi ja sukunimi</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" 
                                         runat="server" placeholder="Etu- ja sukunimi"></asp:TextBox>
                                </div> 
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Sähköpostiosoite</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" 
                                         runat="server" placeholder=""></asp:TextBox>
                                </div> 
                            </div>
                            <div class="col-md-6">
                                <label>Puhelinnumero</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox12" 
                                        runat="server" placeholder="" TextMode="Phone"></asp:TextBox>
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
                            <div class="col-md-4">
                                <div class="form-group">
                                    <asp:Button class="btn btn-primary btn-block" 
                                        ID="Button3" runat="server" Text="Etsi" OnClick="Button3_Click" />
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block" 
                                        ID="Button1" runat="server" Text="Lisää" OnClick="Button1_Click" />
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <asp:Button class="btn btn-warning btn-block" 
                                        ID="Button2" runat="server" Text="Päivitä" OnClick="Button2_Click" />
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <asp:Button class="btn btn-danger btn-block" 
                                        ID="Button4" runat="server" Text="Poista" OnClick="Button4_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            

            <div class="col-md-8">                        
                        <div class="row">
                            <div class="col-12">
                                <h4 class="text-center">Asiakkaat</h4>
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:asiakasDBConnectionString %>" SelectCommand="SELECT * FROM [member_tbl]"></asp:SqlDataSource>

                            <div class="col-md-8">
                                <asp:GridView class="table table-striped table-bordered" 
                                    ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="henkilötunnus" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="henkilötunnus" HeaderText="henkilötunnus" ReadOnly="True" SortExpression="henkilötunnus" />
                                        <asp:BoundField DataField="koko_nimi" HeaderText="koko_nimi" SortExpression="koko_nimi" />
                                        <asp:BoundField DataField="sähköpostiosoite" HeaderText="sähköpostiosoite" SortExpression="sähköpostiosoite" />
                                        <asp:BoundField DataField="puhelinnumero" HeaderText="puhelinnumero" SortExpression="puhelinnumero" />
                                        <asp:BoundField DataField="osoite" HeaderText="osoite" SortExpression="osoite" />
                                        <asp:BoundField DataField="postinumero" HeaderText="postinumero" SortExpression="postinumero" />
                                        <asp:BoundField DataField="kaupunki" HeaderText="kaupunki" SortExpression="kaupunki" />
                                        <asp:BoundField DataField="maa" HeaderText="maa" SortExpression="maa" />
                                    </Columns>
                                </asp:GridView>                         
                            </div>
                        </div>      
            </div>
        </div>
    </div>

</asp:Content>
