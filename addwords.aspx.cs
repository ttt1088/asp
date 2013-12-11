using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class addwords : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        XmlDocument xmlDoc = new XmlDocument();
        xmlDoc.Load(Server.MapPath(" / ") + "addwords.xml");
        XmlNode root = xmlDoc.SelectSingleNode("addwords");//查找<bookstore>
        XmlElement xe1 = xmlDoc.CreateElement("words");//创建一个<book>节点
        XmlElement xesub1 = xmlDoc.CreateElement("汉字");
        xesub1.InnerText = TextBox1.Text;//设置文本节点
        xe1.AppendChild(xesub1);//添加到<book>节点中
        XmlElement xesub2 = xmlDoc.CreateElement("pinyin");
        xesub2.InnerText = TextBox2.Text;
        xe1.AppendChild(xesub2);
        XmlElement xesub3 = xmlDoc.CreateElement("liju");
        xesub3.InnerText = TextBox3.Text;
        xe1.AppendChild(xesub3);
        root.AppendChild(xe1);//添加到<bookstore>节点中
        xmlDoc.Save(Server.MapPath("/") + "addwords.xml");
        XmlDataSource1.Data = TextBox1.Text + ("   ") + TextBox2.Text;
        Label1.Text = XmlDataSource1.Data;
    }
    protected void XmlDataSource1_Transforming(object sender, EventArgs e)
    {


    }

   // protected void Button2_Click(object sender, EventArgs e)
    //{
       // string name = FileUpload1.FileName;       //获取文件名
       // string type = name.Substring(name.LastIndexOf(".") + 1);    //获取文件类型
       // string ipath = Server.MapPath("Image") + "\\" + name;    //获取文件路径
       // string wpath = "Image\\" + name;        //[color=red]设置文件保存相对路径(这里的路径起始就是我们存放图片的文件夹名)[/color]

        //string query1 = "insert into Images values('" + wpath + "')";

        //if (type == "jpg" || type == "gif" || type == "bmp" || type == "png")
        //{
        //    FileUpload1.SaveAs(ipath);        //服务器保存路径
       //     sqlHelper.ExecterNonQuery(query1);
       // }
   // }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string path = Server.MapPath("~/images/");
        FileUpload1.PostedFile.SaveAs(path + FileUpload1.FileName);
        Response.Write("<script>alert('上传成功');</script>");
    }
}