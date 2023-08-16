var express=require('express');
var router=express.Router();
router.get('/historia',function(req,res){
    res.render('historia');

})
module.exports=router;