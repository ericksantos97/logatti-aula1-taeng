<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AulaList.aspx.cs" Inherits="Front.AulaList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" ></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" ></script>
    <title>Aula</title>
    <script type="text/javascript">
        function openModalConfirmation() {
            $('#modalConfirmation').modal('show');
        }
        function showMessage() {
            $('.toast').toast('show');
        }
    </script>
</head>
<body>
    <div class="toast ml-auto" role="alert" data-delay="5000" data-autohide="true" style="margin-right: 15px; margin-top: 15px;">
        <div class="toast-header">
            <strong class="mr-auto text-primary">Mensagem</strong>
            <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
                <span aria-hidden="true">×</span>
            </button>
        </div>
        <div class="toast-body">
            <asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <div class="container">
        <form id="form" runat="server">
            <asp:Label ID="lblSelectedId" runat="server" Visible="false" Text=""></asp:Label>
            <div class="row" style="margin-top: 15px;">
                <div class="col-12">
                    <div class="form-group">
                        <asp:Button class="btn btn-success" ID="btnNovo" runat="server" Text="Criar Nova Aula" PostBackUrl="~/AulaForm.aspx" />
                    </div>
                </div>
            </div>
            <div class="table-responsive">
                <asp:GridView ID="gvResult" runat="server" AutoGenerateColumns="False" OnRowCommand="GVResult_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="ID" />
                        <asp:BoundField DataField="NomeDisciplina" HeaderText="Disciplina" />
                        <asp:BoundField DataField="QuantidadeAluno" HeaderText="Quantidde de Aluno" />
                        <asp:BoundField DataField="NomeProfessor" HeaderText="Professor" />
                        <asp:BoundField DataField="NomeFaculdade" HeaderText="Faculdade" />
                        <asp:ButtonField ButtonType="Image" HeaderText="Alterar" CommandName="A" ControlStyle-Width="18" ImageUrl="~/imagens/alterar.png"></asp:ButtonField>
                        <asp:ButtonField ButtonType="Image" HeaderText="Excluir" CommandName="E" ControlStyle-Width="18" ImageUrl="~/imagens/excluir.png"></asp:ButtonField>
                    </Columns>
                </asp:GridView>
            </div>
            <div class="modal fade" id="modalConfirmation" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLongTitle">Confirmação de Exclusão</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            Deseja excluir o registro selecionado?
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                            <asp:Button ID="btnConfirm" CssClass="btn btn-danger" runat="server" Text="Confirmar" OnClick="btnConfirm_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</body>
</html>