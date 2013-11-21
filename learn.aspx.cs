using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class learn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Button1.CausesValidation = false;
        if (Session["imggroup"] == null)
        {
            Random rnd = new Random();
            int n = rnd.Next(1, 3);
            Session["imggroup"] = n.ToString();
        }
        SetImage();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string a = Session["imggroup"].ToString();
        do
        {
            Random rnd = new Random();
            int n = rnd.Next(1, 3);
            Session["imggroup"] = n.ToString();
        } while (Session["imggroup"].ToString() == a);
        SetImage();
    }
    private void SetImage()
    {
        if (Session["imggroup"].ToString() == "1")
        {
            Image1.ImageUrl = "~/img/sell.jpg";
            Image2.ImageUrl = "~/img/buy.jpg";
            Image3.ImageUrl = "~/img/travel1.jpg";
            Image4.ImageUrl = "~/img/write1.jpg";
            Image5.ImageUrl = "~/img/study.jpg";
        }
        if (Session["imggroup"].ToString() == "2")
        {
            Image1.ImageUrl = "~/img/01.jpg";
            Image2.ImageUrl = "~/img/02.jpg";
            Image3.ImageUrl = "~/img/03.jpg";
            Image4.ImageUrl = "~/img/04.jpg";
            Image5.ImageUrl = "~/img/05.jpg";
        }
    }
}