using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;


namespace TUP_Laboratorio_3_Tp_Final
{
    public partial class contact_section : System.Web.UI.Page
    {
        protected void buttonSubmitForm_Click(object sender, EventArgs e)
        {
            string email = inputEmail.Text;
            string asunto = asuntoInput.Text;
            string nombre = nombreInput.Text;
            string provincia = provinciaInput.Text;
            string cuidad = cuidadInput.Text;
            string mensaje = inputMessagge.Text;

            try
            {
                using (MailMessage correo = new MailMessage()){

                    correo.From = new MailAddress("testemailfernando@gmail.com");
                    correo.To.Add(email);
                    correo.Subject = asunto;
                    correo.Body = $"<h1>Querido {nombre} </h1> " +
                        $"<h4>Localidad: </h4>" +
                        $" <b>{cuidad} - {provincia}</b> <br />" +
                        $"Respondiendole a su consulta:" +
                        $"<br /> <p>{mensaje}<p/> <p>Su consulta ser atendida por un operador en breve. Gracias por su paciencia. <p/>";
                    correo.IsBodyHtml = true;

                    using (SmtpClient client = new SmtpClient("smtp.gmail.com", 587))
                    {
                        
                        client.Credentials = new System.Net.NetworkCredential("testemailfernando@gmail.com", "Alloyfpspro");
                        client.EnableSsl = true;
                        client.Send(correo);
                    }
                }

                asuntoInput.Text = "";
                nombreInput.Text = "";
                inputMessagge.Text = "";
            }
            catch (Exception ex)
            {
                Response.Write("No se pudo mandar el mail" + ex.Message);
            }

        }

        protected void provinciaInput_SelectedIndexChanged(object sender, EventArgs e)
        {
            cuidadInput.Items.Clear();
            if(provinciaInput.SelectedValue == "Santa Fe")
            {
                cuidadInput.Items.Add("Rafaela");
                cuidadInput.Items.Add("Rosario");
                cuidadInput.Items.Add("Sunchales");
            }else
            {
                cuidadInput.Items.Add("San Francisco");
                cuidadInput.Items.Add("Arroyito");
                cuidadInput.Items.Add("Morteros");
            }
        }
    }
}