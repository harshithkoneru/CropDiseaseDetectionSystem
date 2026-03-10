function validate()
{
var name=document.getElementById("name").value;

if(name=="")
{
alert("Enter farmer name");
return false;
}

return true;
}