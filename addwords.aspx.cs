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
        xmlDoc.Load(Server.MapPath(" / ") +"addwords.xml");
        XmlNode root = xmlDoc.SelectSingleNode("addwords");//查找<bookstore>
        XmlElement xe1 = xmlDoc.CreateElement("words");//创建一个<book>节点
        XmlElement xesub1 = xmlDoc.CreateElement("汉字");
        xesub1.InnerText =TextBox1.Text;//设置文本节点
        xe1.AppendChild(xesub1);//添加到<book>节点中
        XmlElement xesub2 = xmlDoc.CreateElement("pinyin");
        xesub2.InnerText = TextBox2.Text;
        xe1.AppendChild(xesub2);
        XmlElement xesub3 = xmlDoc.CreateElement("liju");
        xesub3.InnerText = TextBox3.Text;
        xe1.AppendChild(xesub3);
        root.AppendChild(xe1);//添加到<bookstore>节点中
        xmlDoc.Save(Server.MapPath(" / ") + "addwords.xml");
        XmlDataSource1.Data = TextBox1.Text+("   ")+TextBox2.Text;
        Label1.Text = XmlDataSource1.Data;
    }
    protected void XmlDataSource1_Transforming(object sender, EventArgs e)
    {
      

    }
}