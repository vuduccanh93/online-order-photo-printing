using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Entity;
using ODPP.Business;
using ODPP.Data;

namespace ODPP.Admin
{
    public partial class FAQs : System.Web.UI.Page
    {
        tblFAQ obj;
        protected void Page_Load(object sender, EventArgs e)
        {
            //btnSave.ServerClick += new System.EventHandler(this.btnSave_click);

            // Add the new HtmlInputButton control to the Controls collection of the
            // PlaceHolder control. 
            //ControlContainer.Controls.Add(btnSave);
            if (!IsPostBack)
            {
                bindGrid();
            }
        }

        protected void btnref_Click(object sender, EventArgs e)
        {
            bindGrid();
        }
        public string bindGrid()
        {
            rpFAQs.DataSource = FAQServices.FAQ_GetByAll();

            rpFAQs.DataBind();
            return "";

        }
        protected void btnadd_click(object sender, EventArgs e)
        {
            pnlshow.Visible = false;
            pnlupdate.Visible = true;
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            tblFAQ fa = new tblFAQ();
            if (txtID.Value != null && txtID.Value.Trim().Length > 0)
            {
                fa = FAQServices.FAQ_GetById(int.Parse(txtID.Value));
                fa.Question = txtQuestion.Value;
                fa.Answer = txtAnswer.Value;
                FAQServices.User_Update(fa);
            }
            else
            {
                fa.Question = txtQuestion.Value;
                fa.Answer = txtAnswer.Value;
                FAQServices.FAQ_Insert(fa);
            }
           
            txtQuestion.Value = txtAnswer.Value=txtID.Value = null;
            pnlshow.Visible = true;
            pnlupdate.Visible = false;
            bindGrid();
            
        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtAnswer.Value = txtQuestion.Value = null;
        }
        protected void btndel_click(object sender, EventArgs e)
        {
            //RepeaterItem item = default(RepeaterItem);
            //for (int i = 0; i < rpFAQs.Items.Count; i++)
            //{
            //    item = rpFAQs.Items[i];
            //    if (item.ItemType == ListItemType.AlternatingItem | item.ItemType == ListItemType.Item)
            //    {
            //        if (((CheckBox)item.FindControl("ChkSelect")).Checked)
            //        {
            //            string strId = item.Controls[1].ToString();
            //            FAQServices.FAQ_Delete(int.Parse(strId));
            //        }
            //    }
            //}
            foreach (RepeaterItem item in rpFAQs.Items)
            {
                CheckBox ck = (CheckBox)item.FindControl("ChkSelect");
                if (ck.Checked)
                {
                    ImageButton lbt = (ImageButton)item.FindControl("cmdDelete");
                    FAQServices.FAQ_Delete(int.Parse(lbt.CommandArgument.ToString()));
                }
            }
            bindGrid();
        }

     

        protected void rpFAQs_ItemCommand1(object source, RepeaterCommandEventArgs e)
        {
            tblFAQ fa = FAQServices.FAQ_GetById(int.Parse(e.CommandArgument.ToString()));
            if (fa != null)
            {
                if (e.CommandName.Equals("Edit"))
                {

                    txtID.Value = fa.FaqID.ToString() ;
                    txtAnswer.Value = fa.Answer;
                    txtQuestion.Value = fa.Question;
                    pnlshow.Visible = false;
                    pnlupdate.Visible = true;
                }
                if (e.CommandName.Equals("Delete"))
                {
                    FAQServices.FAQ_Delete(fa.FaqID);
                }

            }
            bindGrid();

        }

       

       
    }
}