using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string nombre, apellidos, rut, direccion, horasExtras, bono, salud, anticipo, afp, año, mes ,montoIsapre;
        string horasTrabajadas, valorHora;
        double sueldoBase, imponible, descuento1,total;
       

       
        nombre = (Request.Form["ctl00$ContentPlaceHolder1$txt_nombre"].ToString());
        apellidos = (Request.Form["ctl00$ContentPlaceHolder1$txt_apellidos"].ToString());
        rut = (Request.Form["ctl00$ContentPlaceHolder1$txt_rut"].ToString());
        direccion = (Request.Form["ctl00$ContentPlaceHolder1$txt_direccion"].ToString());

        horasTrabajadas = (Request.Form["ctl00$ContentPlaceHolder1$txt_horasTrabajadas"].ToString());
        valorHora = (Request.Form["ctl00$ContentPlaceHolder1$txt_valorHora"].ToString());

        horasExtras = (Request.Form["ctl00$ContentPlaceHolder1$txt_horasFinSem"].ToString());
        bono = (Request.Form["ctl00$ContentPlaceHolder1$txt_bonos"].ToString());

        salud = (Request.Form["ctl00$ContentPlaceHolder1$ddl_salud"].ToString());
        afp= (Request.Form["ctl00$ContentPlaceHolder1$ddl_afp"].ToString());
        mes = (Request.Form["ctl00$ContentPlaceHolder1$ddl_mes"].ToString());
        año = (Request.Form["ctl00$ContentPlaceHolder1$txt_año"].ToString());
        anticipo = (Request.Form["ctl00$ContentPlaceHolder1$txt_anticipos"].ToString());
        montoIsapre = (Request.Form["ctl00$ContentPlaceHolder1$txt_Montoisapre"].ToString());
        
        
        sueldoBase = calcularSueldoBase(horasTrabajadas,valorHora);
        imponible = calcularImposicion(horasExtras, sueldoBase, bono, valorHora);
        mostrarSueld(sueldoBase,imponible);
        descuento1 = mostrarDescuento(imponible, anticipo, afp, montoIsapre, Descuento1, salud);
        total = calcularTotal(imponible, descuento1);
        Datos(nombre, apellidos, rut, direccion, horasTrabajadas, horasExtras, bono, salud, anticipo, afp, mes, año, total, descuento1);    
    }
    protected void Datos(string nombre, string apellidos, string rut, string direccion, string horasTrabajadas, string horasExtras, string bono, string salud, string anticipo, string afp, string mes, string año, double total, double descuento1)
    {
        lbl_nombre.Text = ""+ nombre+" "+apellidos;
        lbl_rut.Text = "" + rut;
        lbl_direccion.Text = "" + direccion;
        lbl_horasTrabajadas.Text = "" + horasTrabajadas;
        lbl_horasExtras.Text = "" + horasExtras;
        lbl_bono.Text = "" + bono;
        lbl_salud.Text = "" + salud;
        lbl_afp.Text = "" + afp;
        lbl_fecha.Text = DateTime.Now.ToString("f");
        lbl_anticipo.Text = "" + anticipo;
        lbl_Descuento.Text = "" + descuento1.ToString("N0");
        lbl_total.Text = "" + total.ToString("N0");
        lbl_ingreso.Text = mes + " " + año;

    }
    protected void mostrarSueld(double sueldoBase, double imponible)
    {
        lbl_sueldoBase.Text = " " + sueldoBase.ToString("N0");
        lbl_totalImponible.Text = "" + imponible.ToString("N0");
    }
    protected double calcularSueldoBase(string horasTrabajadas, string valorHora)
    {


        double sueldoBase, valorHoras;
        valorHoras = Convert.ToInt32(valorHora);
        sueldoBase = Convert.ToInt32(horasTrabajadas);
        sueldoBase = valorHoras * sueldoBase;
        

        return sueldoBase;
        
    }
    protected double calcularImposicion(string horasExtras, double sueldoBase, string bono, string valorHora)
    {


        double imponible, Bono, HorasExtras, ValorHora;
        HorasExtras = Convert.ToInt32(horasExtras);
        ValorHora = Convert.ToInt32(valorHora);
        HorasExtras = HorasExtras * ((ValorHora * 150) / 100);
        Bono = Convert.ToInt32(bono);
        imponible = sueldoBase + Bono + HorasExtras;


        return imponible;

    }

    protected double mostrarDescuento(double imponible, string anticipo, string afp, string montoIsapre, double Descuento, string salud)
    {
        double  Anticipos, MontoIsapre;
        Anticipos = Convert.ToInt32(anticipo);
        MontoIsapre = Convert.ToInt32(montoIsapre);

        switch (salud)
        {
            case "FONASA":
                MontoIsapre = imponible * 0.07;
                break;
            case "MASVIDA":
                break;
            case "CONSALUD":
                break;
            case "COLMENA":
                break;
            case "BANMEDICA":
                break;
        }


        switch (afp)
        {
            case "HABITAT":
                Descuento = MontoIsapre + ((imponible * 11.27)/100);
                break;
            case "CUPRUM":
                Descuento = MontoIsapre + ((imponible * 11.48)/ 100);
                break;
            case "MODELO":
                Descuento = MontoIsapre + ((imponible * 1.77) / 100);
                break;
        }         
        return Descuento;
    }

    protected double calcularTotal(double Descuento, double imponible)
    {
        double total;
        total = Descuento - imponible;
        return total;
    }


    public double Descuento1 { get; set; }
}