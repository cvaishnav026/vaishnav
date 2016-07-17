<script>
function f1()
{
var v1=document.getElementById('t1').value;
var v2=document.getElementById('t2').value;
var v3=document.getElementById('t3').value;
var v4=document.getElementById('t4').value;
var s=true;



if(v1=="")
{
a('t1err',"enter Your Username");
s=false;
}
else if(!v1.match(/^[a-z]+$/))
{
a('t1err',"enter only lowercase aphabeats");
s=false;
}
else
{
a('t1err',"good very good!!");
}




if(v2=="")
{
a('t2err',"please enter Lastname");
s=false;
}
else if(!v2.match(/^[A-Z]+$/))
{
a('t2err',"Enter only one character in uppercase");
s=false;
}
else
{
a('t2err',"good boY!!!"); 
}

if(v3=="")
{
a('t3err',"enter Your Phonenumber");
s=false;
}
else if(!v3.match(/^[0-9]+$/))
{
a('t3err',"enter only numbers");
s=false;
}
else
{
a('t3err',"good very good!!");
}

if(v4=="")
{
a('t4err',"enter Your e-MAIL");
s=false;
}
else if(!v4.match(/^[a-z,A-Z,0-9,@ !]+$/))
{
a('t4err',"enter your email correctly");
s=false;
}
else
{
a('t4err',"good very good!!");
}


return s;
}
function a(idname,message)
{
document.getElementById(idname).innerHTML=message;

}

</script>
