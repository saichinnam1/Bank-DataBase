/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function validate()
{
   var aadharid=document.f1.aadharid.value;
   var mno=document.f1.mno.value;
   //alert("Adhar iD:"+aadharid);
   if(aadharid.length>12 || aadharid.length<12)
   {
       alert("Invalid Aadhar ID Entered! Please Enter 12 digit adhar numbe without space");
       return false;
    }
    if(mno.length>10 || mno.length<10)
    {
        alert("Invalid Mobile Number Entered! Please Enter 10 Digit Mobile Number");
        return false;
    }
    return true;
}

