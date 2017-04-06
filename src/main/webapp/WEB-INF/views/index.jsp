<%@ page language="java" contentType="text/html; charset=UTF-8" 	pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="${context.js}/hospital.js"></script>
<img src="${context.img}/common/loading.gif" alt="" /> 
<script>
 $(function() {
	goPage('${context.path}/home')
}); 
</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"/>   </script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><img>Brand</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a id="hospital" href="#">Hospital <span
							class="sr-only">(current)</span></a></li>
					<li><a href="#">Link</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Algorithm <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a id="series" href="#">Series</a></li>
							<li><a id="array" href="#">Array</a></li>
							<li><a id="matrix" href="#">Matrix</a></li>
							<li><a id="math" href="#">Math</a></li>
							<li><a id="appl" href="#">Application</a></li>
						</ul></li>
				</ul>
				<form class="navbar-form navbar-left">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Search">
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
				</form>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">Link</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">OOP<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a id="encap" href="#">Encapsulation</a></li>
							<li><a id="inherit" href="#">Inheritance</a></li>
							<li><a id="poly" href="#">Polymorphism</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<div id="wrapper"></div>
</body>
<script>
  var app = app || {};
  
  app.context = (function(){
	  
  })();
  app.component=(function(){
	  return{
		  body : $('#body'),
		  wrapper : $('#wrapper'),
		  div : function(){
			  return $(id);
		  },
		  aButton : function(id,type){
			  return $('<a href="#" id="'+id+'" class="btn '+type+'"role="button">example</a>');
		  },
		  bButton : function(){
			  return $('<button id="bButton" type="button" class="btn btn-default">example</button>');
		  },
		  inputText : function(id){
			  return $('<input id="'+id+'" type="text" class="form-control" placeholder="example" aria-describedby="basic-addon1">');
		  },
		  divAlert : function(type){ //alert-danger
			  return  $('<div class="alert '+type+'" role="alert">example</div>');
		  },
		  seriesMenu : function(){
			  return $('<ul class="list-group">'
					  	+'<li id="aSeries" class="list-group-item"><a href="#">등차수열 합</a></li>'
					  	+'<li id="swSeries" class="list-group-item"><a href="#">스위치수열 합</a></li>'
					  	+'<li id="dSeries" class="list-group-item"><a href="#">계차수열 합</a></li>'
					  	+'<li id="factorial" class="list-group-item"><a href="#">펙토리얼</a></li>'
					  	+'<li id="fibonacci" class="list-group-item"><a href="#">피보나치수열 합</a></li>'
						+'</ul>');
		  },
		  oopMenu : function(){
			  return $('<ul class="list-group">'
					  	+'<li id="encap" class="list-group-item"><a href="#">은 닉</a></li>'
					  	+'<li id="inherit"  class="list-group-item"><a href="#">상 속</a></li>'
					  	+'<li id="poly" class="list-group-item"><a href="#"></a>다형성</li>'
						+'</ul>');
		  }
	  };
  })();
  app.complex=
 		 {
			createButton : function(type){this._name=name;},
			setAge : function(age){this._age=age;},
			setGender : function(gender){this._gender=gender;},
			setJob : function(job){this._job=job;},
			getName : function(){return this._name;},
			getAge : function(){return this._age=age;},
			getGender : function(){return this._gender;},
			getJob : function(){return this._job=job;},
			toString : function(){
				return this._name+','+this._age+','+this._gender+','+this._job;
			}
		};
 
  var table = '<table id = "table" style="width: 500px; height:300px; border-collapse: collapse;border: 1px solid black; " >'
 	+'<tr style="border: 1px solid black;">'
 	+'<td id="tableLeft" style="width: 50%; border: 1px solid black; "></td>'
 	+'<td id="tableRight" style="width: 50%; border: 1px solid black; "></td>'
 	+'</tr>'
 	+'</table>';

 // Algorithm
 app.algorith=(function(){
	 var aSeries = function(start,limit,diff){
			 var start = start*1,limit=limit*1,diff=diff*1;
			 var sum = 0;
			 var rs = "";
			 var i = start;
			 while(i<limit){
		         /*if(i+diff>limit){
		            rs+=i+"+";
		         }else{
		            rs +=i;
		         }*/
		         rs+=(i+diff>limit)?i+"=":i+"+";
		         sum+=i;
		         i+=diff;
		      }
		      return rs+'='+sum;
	 };
	 
	 return {
		aSeries : aSeries,	
		series : function(){
			 $('#series').on('click',function(){
				 app.component.wrapper.empty();
				 app.component.wrapper.append(table).css('width','500px').css('text-align','center').css('position','relative').css('left','35%');
			 	$('#tableLeft').html(app.component.seriesMenu());
			 	var tableRight = $('#tableRight');
			 	app.component.inputText('inputText').attr('placeholder','시작값 한계값 공차 (공백으로 구분)입력').appendTo(tableRight);
			 	app.component.aButton('aButton','btn-primary').html('등차수열의 결과').appendTo(tableRight).on('click',function(){
				 	var inputText=$('#inputText').val();
				 	console.log('inputText:'+inputText);
				 	var arr = inputText.split(' ');
				 	var start = arr[0];
				 	var limit = arr[1];
				 	var diff = arr[2];
				 	console.log('start:'+start+',limit:'+limit+',diff:'+diff);
				 
				 tableRight.empty();
				 app.component.divAlert('alert-danger').html(app.algorithm.aSeries(start,limit,diff)).appendTo(tableRight);
				 });
			 
			 	$('#aSeries').on('click',function(){
			 		alert('aSeries');
			 		app.component.inputText('inputText').attr('placeholder','항을  입력해주세요.').appendTo(tableRight);
			 		app.component.aButton('aButton','btn-primary').html('등차가 1인 수열에서 1부터 항값까지의 합은.').appendTo(tableRight).on('click',function(){
			 		 var limitNO = $('#inputText').val();
			 		tableRight.empty();
			 		app.component.divAlert('alert-danger').html('1부터'+limitNO+'항까지 등차가 1인 수열의 합은+'+aSeries(limitNO)+'입니다.').appendTo(tableRight);
			 	});
			});
			 	$('#swSeries').on('click',function(){
			 		alert('swSeries');
			 		app.component.inputText('inputText').attr('placeholder','항을  입력해주세요.').appendTo(tableRight);
			 		app.component.aButton('aButton','btn-primary').html('스위치 수열에서 1부터  항의값 값까지의 합은.').appendTo(tableRight).on('click',function(){
			 		 var limitNO = $('#inputText').val();
			 		tableRight.empty();
			 		app.component.divAlert('alert-danger').html('1부터'+limitNO+'항까지 스위치수열 1인 수열의 합은+'+swSeries(limitNO)+'입니다.').appendTo(tableRight);
			 	});
			});
			 	$('#dSeries').on('click',function(){
			 		alert('dSeries');
			 		app.component.inputText('inputText').attr('placeholder','항을  입력해주세요.').appendTo(tableRight);
			 		app.component.aButton('aButton','btn-primary').html('계차수열의 수열에서 1부터  항의값 값까지의 합은.').appendTo(tableRight).on('click',function(){
			 		 var limitNO = $('#inputText').val();
			 		tableRight.empty();
			 		app.component.divAlert('alert-danger').html('1부터'+limitNO+'항까지 계차수열의 합은+'+dSeries(limitNO)+'입니다.').appendTo(tableRight);
			 	});
			});
			 	$('#factorial').on('click',function(){
			 		alert('factorial');
			 		app.component.inputText('inputText').attr('placeholder','항을  입력해주세요.').appendTo(tableRight);
			 		app.component.aButton('aButton','btn-primary').html('펙토리얼 수열에서 1부터  항의값 값까지의 합은.').appendTo(tableRight).on('click',function(){
			 		 var limitNO = $('#inputText').val();
			 		tableRight.empty();
			 		app.component.divAlert('alert-danger').html('1부터'+limitNO+'항까지 펙토리얼 수열의 합은+'+factorial(limitNO)+'입니다.').appendTo(tableRight);
			 	});
				});
			 	$('#fibonacci').on('click',function(){
			 		alert('fibonacci');
			 		app.component.inputText('inputText').attr('placeholder','항을  입력해주세요.').appendTo(tableRight);
			 		app.component.aButton('aButton','btn-primary').html('피보나치수열의 수열에서 1부터  항의값 값까지의 합은.').appendTo(tableRight).on('click',function(){
			 		 var limitNO = $('#inputText').val();
			 		app.component.divAlert('alert-danger').html('1부터'+limitNO+'항까지 피보나치수열의 합은+'+fibonacci(limitNO)+'입니다.').appendTo(tableRight);
			 	});
				});
			 });
		},
		
		arr : function(){
			
		},
		matrix : function(){
			
		},
		math : function(){
			
		},
		appl : function(){
			
		}
	 };
 })();
 app.oop(function(){
	 return {
		encap : function(){
			 $('#encap').on('click',function(){
			 		app.component.wrapper.empty();
				 alert('클릭함');	 
				 app.component.wrapper.append(table).css('width','500px').css('text-align','center').css('position','relative').css('left','35%');
				 $('#tableLeft').html(app.component.oopMenu());
				 var tableRight = $('#tableRight')
				 app.component.inputText('inputText').attr('placeholder','이름 나이 성별 직업(공백으로 구분)입력').appendTo(tableRight);
				 app.component.aButton('aButton','btn-primary').html('스펙보기').appendTo(tableRight).css('margin','10px auto').on('click',function(){
					alert('은닉화 진입');
					/* var person = new Object(); */
					var inputText=$('#inputText').val();
					var arr=inputText.split(' ');
					app.person.setName(arr[0]);
					app.person.setAge(arr[1]);
					app.person.setGender(arr[2]);
					app.person.setJob(arr[3]);
					console.log(app.person);
					var spec = '<h3>'+app.person.toString()+'</h3>';
					app.component.divAlert('alert-danger').html(spec).appendTo(tableRight);
				 });
			 });

		},
		inherit : function(){},
		poly : function(){}
	 };
 })();
 
	app.component.wrapper.empty();
 	app.component.inputText('inputText').attr('placeholder','이 름').appendTo(wrapper);
 	app.component.aButton('aButton','btn-primary').html('CLICK ME').appendTo(wrapper);
 	app.component.aButton('aButton','btn-primary').on('click',function(){
	 var name = $('#inputText').val();
	 app.component.wrapper.empty();
	 app.component.divAlert('alert-danger').html('Hello'+name+'!!').appendTo(wrapper);
 });
 
 
 	
 	
 	/*
	function class
 	*/
 	
 
 function swSeries(limitNO){
	 var sum = 0;
	 var flag=1;
	 for(i=0;i<=limitNO;i++){
		sum += flag*i;
		flag *= -1;
	 }
	return sum;	 
 }
 function dSeries(limitNO){
	 var sum = 0;
	 for(i=0;i<=limitNO;i++){
		 sum = sum + i;
	 }
	 return sum;
 }
 function factorial(limitNO){
	 var sum = 1;
	 for(i=2;i<=limitNO;i++){
		 if(limitNO==0){sum=0;}else if(limitNO==1){sum=1;}
		 sum = sum + sum*i;
	 }
	 return sum;
 }
 function fibonacci(limitNO){
	 var sum = 2,a = 1,b = 1,c = 0;
	 for(i=3;i<=limitNO;i++){
		 if(limitNO==0){sum=0;}else if(limitNO==1){sum=1;}else if(limitNO==2){sum=2;}
		 c=a+b;
		 sum+=c;
		 a=b;
		 b=c;
	 }
 return sum;
 }
 /*
	객체지향적 자바스크립트
 	js 객체생성법
 	1. constructor
 	2. declaration
 	3. expression

  */
/* app.person = new Object();
person.name = 'donald';
person.age = '70';
person.gender = '남';
person.job = 'president';
console.log(person); */
app.person =( function (){
	var _name,_age,_gender,_job;
	this.toString = function(){
		return _name +','+ _age +','+ _gender +','+ _job;
	};
	return {
		setName : function(name){this._name=name;},
		setAge : function(age){this._age=age;},
		setGender : function(gender){this._gender=gender;},
		setJob : function(job){this._job=job;},
		getName : function(){return this._name;},
		getAge : function(){return this._age=age;},
		getGender : function(){return this._gender;},
		getJob : function(){return this._job=job;},
		toString : function(){
			return this._name+','+this._age+','+this._gender+','+this._job;
		}
	};
})();
 
</script>
</html>