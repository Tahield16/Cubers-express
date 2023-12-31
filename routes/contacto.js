var express=require('express');
var router=express.Router();
router.get('/',function(req,res,next){
    res.render("contacto");
})
var nodemailer = require('nodemailer');
router.post('/',async(req,res,next)=>{
    console.log(req.body);
    var nombre=req.body.nombre;
    var gmail=req.body.gmail;
    var mensaje=req.body.mensaje;
    var obj={
        
        to:'tahieldevotom@gmail.com',
        subject:'CONTACTO WEB',
        html: nombre +" se contacto a través de la web y quiere más información a este correo "+gmail+ ".<br> Además, hizo este comentario : " +mensaje
    };
    var transport= nodemailer.createTransport({
        host:process.env.SMTP_HOST,
        port:process.env.SMTP_PORT,
        auth:{
            user:process.env.SMTP_USER,
            pass:process.env.SMTP_PASS
        }
    })
    var info=await transport.sendMail(obj);
    res.render('contacto',{
        message:'Mensaje enviado correctamente'
    })
    });
module.exports=router;