﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AulaForm.aspx.cs" Inherits="Front.AulaForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous"/>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Aula</title>
</head>
<body>
   <div class="container">
        <form id="form" runat="server">
            <div class="row" style="margin-top: 15px;">
                <div class="col-12">
                    <div class="form-group">
                        <asp:Button class="btn btn-success" ID="btnLista" runat="server" Text="Listar Aulas" PostBackUrl="~/AulaList.aspx" />
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-2">
                    <div class="form-group">
                        <asp:Label ID="lblId" runat="server" Text="ID"></asp:Label>
                        <asp:TextBox class="form-control" ReadOnly="true" ID="txtId" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-5">
                    <div class="form-group">
                        <asp:Label ID="lblNomeDisciplina" runat="server" Text="*Nome da Disciplina"></asp:Label>
                        <asp:TextBox class="form-control" MaxLength="100" ID="txtNomeDisciplina" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-5">
                    <div class="form-group">
                        <asp:Label ID="lblQuantidadeAluno" runat="server" Text="*Quantidade de Aluno"></asp:Label>
                        <asp:TextBox class="form-control" MaxLength="10" ID="txtQuantidadeAluno" runat="server"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-6">
                    <div class="form-group">
                        <asp:Label ID="lblNomeProfessor" runat="server" Text="*Nome do Professor"></asp:Label>
                        <asp:TextBox class="form-control" MaxLength="100" ID="txtNomeProfessor" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-6">
                    <div class="form-group">
                        <asp:Label ID="lblNomeFaculdade" runat="server" Text="*Nome da Faculdade"></asp:Label>
                        <asp:TextBox class="form-control" MaxLength="100" ID="txtNomeFaculdade" runat="server"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="form-group">
                        <asp:Button class="btn btn-primary" ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSave_Click" />
                        <asp:Button class="btn btn-warning" ID="btnLimpar" runat="server" Text="Limpar" OnClick="btnReset_Click" />
                    </div>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
