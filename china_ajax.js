/* ---------------------------- */
/* XMLHTTPRequest Enable */
/* ---------------------------- */
function createObject() {
var request_type;
var browser = navigator.appName;
if(browser == "Microsoft Internet Explorer"){
request_type = new ActiveXObject("Microsoft.XMLHTTP");
}else{
request_type = new XMLHttpRequest();
}
return request_type;
}
var http = createObject();


var nocache = 0;
function insert() {

 document.getElementById('insert_response').innerHTML = "Just a second..."

var name= document.getElementById('name').value;
name=name.replace(/[^а-яА-Яa-z\.\s,-]/ig,"");
var table=  document.getElementById('table').innerHTML;

 document.getElementById('insert_response').innerHTML = "Just a 2second..."

http.open('get', 'china_insert.php?name='+name+'&table='+table);
http.onreadystatechange = insertReply;
http.send(null);
}

function insertReply() {
if(http.readyState == 4){ 
var response = http.responseText;


document.getElementById('insert_response').innerHTML = response;
if (/(добавлен)+/.test(response)) document.getElementById('name').value="";
 }
 }
 
 function link() {
 // Optional: Show a waiting message in the layer with ID login_response
 document.getElementById('insert_response').innerHTML = "Заполните форму полностью.";
 // Required: verify that all fileds is not empty. Use encodeURI() to solve some issues about character encoding.
var pupil= document.getElementById('pupil').value;
var teacher= document.getElementById('teacher').value;
if (pupil=="Выберите ученика" && teacher=="Выберите учителя") alert("Необходимо ввести имена ученика и учителя");
else if (pupil=="Выберите ученика") alert("Необходимо ввести имя ученика");
else if (teacher=="Выберите учителя") alert("Необходимо ввести имя учителя");
else {
//encodeURI(document.getElementById('table').value);


 document.getElementById('insert_response').innerHTML = "Just a second..."

http.open('get', 'china_insert_link.php?pupil='+pupil+'&teacher='+teacher);
http.onreadystatechange = insertReply;
document.getElementById('pupil').value="Выберите ученика";
document.getElementById('teacher').value="Выберите учителя";
http.send(null);
}
}