using Persistence;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Utils;

namespace Front
{
    public partial class AulaList : System.Web.UI.Page
    {
        AulaPersistence aulaPersistence = new AulaPersistence();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadGridView();
        }
        protected void GVResult_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int line = int.Parse(e.CommandArgument.ToString());
            lblSelectedId.Text = gvResult.Rows[line].Cells[0].Text;
            selectPage(e);
        }

        protected void selectPage(GridViewCommandEventArgs e)
        {
            if (e.CommandName == "A")
            {
                Response.Redirect("AulaForm.aspx?id=" + int.Parse(lblSelectedId.Text));
            }

            if (e.CommandName == "E")
            {
                DisplayModal(this);
            }
        }
        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            try
            {
                aulaPersistence.Delete(int.Parse(lblSelectedId.Text));
                SendMessage(Messages.MSG_DELETE_SUCCESS, Color.Green);
                LoadGridView();
            }
            catch (Exception ex)
            {
                SendMessage($"{Messages.MSG_ERROR} {ex.Message}", Color.Red);
            }
        }
        private void LoadGridView()
        {
            gvResult.DataSource = aulaPersistence.FindAll();
            gvResult.DataBind();
        }
        private void DisplayModal(Page page)
        {
            ClientScript.RegisterStartupScript(typeof(Page), Guid.NewGuid().ToString(), "openModalConfirmation();", true);
        }
        private void SendMessage(string message, Color color)
        {
            lblMensagem.Text = message;
            lblMensagem.ForeColor = color;
            lblMensagem.Font.Bold = true;
            ClientScript.RegisterStartupScript(typeof(Page), Guid.NewGuid().ToString(), "showMessage();", true);
        }
    }
}