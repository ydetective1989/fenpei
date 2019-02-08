$('.res').on('click','button',function(){
    $('input','.res')[0].select();
    document.execCommand('copy');
})

function islogin(){
    $.ajax({
        url:'../../islogin.php',
        success:function(data){
            if(data != 1) {
                location.href = "./login.html";
            }
        }
    })
}

$('#writeuser').on('click',function(){
    location.href = "../html/index.html";
})

$('#userinfomanger').on('click',function(){
    location.href = "../html/userinfo.html";
})

$('#usermanger').on('click',function(){
    isadmin();
    location.href = "../html/useradmin.html";
})

function getuserinfo(pagenum){
    $.ajax({
        type : 'GET',
        data : {
            pagenum : pagenum
        },
        url : '../../userinfo.php',
        success : function(data){
            if(data != 0){
                data = JSON.parse(data);
                renderPage(data);
            }    
        }
    })
}

function getallpages(num){//参数表示每页显示条数
    $.ajax({
        url : '../../getallpages.php',
        success : function(data){
            allpages = Math.ceil(parseInt(data)/num) - 1;

        }
    })
}
function renderPage(data){
    let str = null;
    let department = null;
    data.forEach(function(ele){
        switch (ele.department) {
           case "1":
            department = "文晖电气"
           break;
           case "2":
           department = "四川久信"
           break;
           case "3":
           department = "四川电信"
           break;
           case "4":
           department = "成绵路营业厅"
           break;


            default:
                break;
        }

        str += `<tr>
           <td>${ele.username}</td>
           <td>${ele.userlevel}</td>
           <td>${ele.number}</td>
           <td>${department}</td>
           <td>${ele.hash}</td>
           
           </tr>`
        

    })
    $('.table-condensed tbody').html(str);

}

function isadmin (){
    $.ajax({
        url : '../../isadmin.php',
        success : function(data){
            if(data != 1){
                alert('你不是管理员');
                location.href = "../html/admin.html";
            }
            
        }
    })
}
function adduser(name,password,isadmin){
    $.ajax({
        type:'POST',
        url : '../../adduser.php',
        data : {
            name : name,
            password : password,
            isadmin : isadmin
        },
        success : function(data){
            if(data == 1) {
                alert('新建用户成功!');
                location.href = "../html/admin.html";
            }else {
                $('.wrapper p').html('新建用户失败，用户名已存在');
            }

        }



    })

}
$('#exit').on('click',function(){
    $.ajax({
        url : '../../loginout.php',
        success : function(data){
            if(data == 1) {
                alert('账户退出');
                location.reload();
            }

        }
    })
})