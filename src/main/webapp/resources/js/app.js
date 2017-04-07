var app=app || {};
/*********************************
 * Model 
 * app.context,
 * app.session
 * app.util
 * app.algorithm
 * app.oop
 * ******************************/
app.context=(function(){
	var init = function(context){
		app.session.init(context);
		onCreate();
	};
	var onCreate = function(){
		setContentView();
		app.component.init();
		app.algorithm.init();
		app.oop.init();
	};
	var setContentView = function(){
		
	};
	return {
	init : init,
	setContentView : setContentView,
	onCreate : onCreate
	};
})();
app.session = (function(){
	var init = function(context){
		sessionStorage.setItem('context',context);
		sessionStorage.setItem('js',context+'/resources/js');
		sessionStorage.setItem('css',context+'/resources/css');
		sessionStorage.setItem('img',context+'/resources/img');
	};
	var getContextPath = function(){return sessionStorage.getItem('context');};
	var getJavascriptPath = function(){return sessionStorage.getItem('js');};
	var getStylePath = function(){return sessionStorage.getItem('css');};
	var getImagePath = function(){return sessionStorage.getItem('img');};
	   return{
		      init:init,
		      getContextPath:getContextPath,
		      getJavascriptPath:getJavascriptPath,
		      getStylePath:getStylePath,
		      getImagePath:getImagePath
		   };
})();
app.util = (function(){})();
app.algorithm=(function(){
	var init = function(){
		onCreate();
	};
	var onCreate = function(){
		setContentView();
		series();
	};
	var setContentView = function(){};
	
	 var series = function(){
			var wrapper = app.component.getWrapper();
			$('#series').on('click',function(){
				
				wrapper.empty();
				wrapper.append(app.algorithm.TABLE);
				$('#tableLeft').html('<ul class="list-group">'
						+	'<li id="aSeries"  class="list-group-item"><a href="#">등차수열 합</a></li>'
						+	'<li id="swSeries" class="list-group-item"><a href="#">스위치수열 합</a></li>'
						+	'<li id="dSeries" class="list-group-item"><a href="#">계차수열 합</a></li>'
						+	'<li id="factorial" class="list-group-item"><a href="#">팩토리얼</a></li>'
						+	'<li id="fibonacci" class="list-group-item"><a href="#">피보나치수열 합</a></li>'
						+'</ul>');
				var tableRight=$('#tableRight');
				aSeries();
				$('#aSeries').on('click',function(){aSeries();});
				$('#swSeries').on('click',function(){swSeries();});
				$('#dSeries').on('click',function(){dSeries();});
				$('#factorial').on('click',function(){factorial();});
				$('#fibonacci').on('click',function(){fibonacci();});
			});
		};
	 var aSeries = function(){
		 $('#tableRight').empty();
		 app.component.inputText('inputText').attr('placeholder','시작값 한계값 공차(공백으로 구분)입력').appendTo(tableRight);
			app.component.aButton('aButton','btn-primary').html('등차수열의 합').appendTo(tableRight)
			.css('margin','10px auto')
				.on('click',function(){
					var inputVal=$('#inputText').val();
					console.log('inputVal:'+inputVal);
					var arr=inputVal.split(' ');
					var start=arr[0];
					var limit=arr[1];
					var diff=arr[2];
					console.log('start:'+start+',limit:'+limit+',diff:'+diff);
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
					app.component.divAlert('alert-danger').html(rs+sum).appendTo(tableRight);
			});
	 };
	 var swSeries = function(){//1,-2,3,-4,5,-6
		 $('#tableRight').empty();
			app.component.inputText('inputText').attr('placeholder','limit(100->-50)').appendTo(tableRight);
			app.component.aButton('aButton','btn-success').html('스위치수열의 합').appendTo(tableRight)
			.css('margin','10px auto')
			.on('click',function(){
				var limit=$('#inputText').val();
				 var sum = 0;
				 var flag=-1;
				 for(i=0;i<=limit;i++){
					sum += flag*i;
					flag = -1*flag;
				 }
				app.component.divAlert('alert-success').html('1부터'+limit+'스위치수열의 합은'+sum+'입니다.').appendTo(tableRight);
			});
		};
	 var dSeries = function(){//1+2+4+7+11+16+22
		 $('#tableRight').empty();
			app.component.inputText('inputText').attr('placeholder','한계값 입력(5->25)').appendTo(tableRight);
			app.component.aButton('aButton','btn-info').html('계차수열 합').appendTo(tableRight)
				.css('margin','10px auto')
				.on('click',function(){
				var limit=$('#inputText').val();
				var sum = 1,total=0;
				var total = 0;
				for(i=0;i<limit;i++){
					sum += i;
					total += sum ;
				}
				app.component.divAlert('alert-info').html('1부터'+limit+'계차수열의 합은'+total+'입니다.').appendTo(tableRight);
			});
		};
	 var factorial = function (){
		 $('#tableRight').empty();
			app.component.inputText('inputText').attr('placeholder','한계값 입력(5->153)').appendTo(tableRight);
			app.component.aButton('aButton','btn-warning').html('펙토리얼의 합').appendTo(tableRight)
				.css('margin','10px auto')
				.on('click',function(){
				var limit=$('#inputText').val();
		 var sum = 1, total = 0;
		 for(i=1;i<=limit;i++){
			 sum = sum*i;
			 total += sum;
		 }
		 if(limit == 0){total = 0;}else if(limit == 1){total = 1;}
		 app.component.divAlert('alert-warning').html('1부터'+limit+'펙토리얼 합은'+total+'입니다.').appendTo(tableRight);
				});
		};
	 var fibonacci = function (){//1+1+2+3+5+8+13+21+34
		 $('#tableRight').empty();
		 app.component.inputText('inputText').attr('placeholder','한계값 입력(5->12)').appendTo(tableRight);
			app.component.aButton('aButton','btn-danger').html('피보나치수열의 합').appendTo(tableRight)
				.css('margin','10px auto')
				.on('click',function(){
				var limit=$('#inputText').val();
		 var sum = 2,a = 1,b = 1,c = 0;
		 for(i=3;i<=limit;i++){
			 c=a+b;
			 sum+=c;
			 a=b;
			 b=c;
		 }
		 if(limit == 0){sum = 0;}else if(limit == 1){sum = 1;}else if(limit == 2){sum = 2;} 
		 app.component.divAlert('alert-danger').html('1부터'+limit+'피보나치수열 합은'+sum+'입니다.').appendTo(tableRight);
				});
		};

	 /*알고리즘배열*/
	var arr = function(){};
	/*알고리즘행열*/
	var matrix = function(){};
	/*알고리즘수학*/
	var math = function(){};
	/*알고리즘응용*/
	var appl = function(){};
	return {
		init : init,
		aSeries : aSeries,
		swSeries : swSeries,
		dSeries : dSeries,
		factorial : factorial,
		fibonacci : fibonacci,
		series : series,
		arr : arr,
		matrix : matrix,
		math : math,
		appl : appl
	};
})();
app.oop=(function(){
	var init = function(){
		onCreate();
	};
	var onCreate = function(){
		setContentView();
		encap();
	};
	var setContentView = function(){};
	var encap = function(){
			$('#encap').on('click',function(){
				alert('encap click');
				var wrapper = app.component.getWrapper();
				wrapper.empty()
				app.component.wrapper.append(app.algorithm.TABLE);
				$('#tableLeft').html(app.oop.OOP_MENU);
				var tableRight=$('#tableRight');
				app.component.inputText('inputText').attr('placeholder','이름 나이 성별 직업(공백으로 구분)입력').appendTo(tableRight);
				app.component.aButton('aButton','btn-primary').html('스펙보기').appendTo(tableRight)
					.css('margin','10px auto')
					.on('click',function(){
						var inputVal=$('#inputText').val();
						var arr=inputVal.split(' ');
						console.log(inputVal);
						app.person.setName(arr[0]);
						app.person.setAge(arr[1]);
						app.person.setGender(arr[2]);
						app.person.setJob(arr[3]);
						console.log(app.person);
						var spec='<h5>'+app.person.toString()+'</h5>';
						app.component.divAlert('alert-danger').html(spec).appendTo(tableRight);
				});
			});
	};
	
	return {
		init : init,
		encap :encap,
		inherit : function(){},
		poly : function(){}
	};
})();
app.person=(function() { 
	var _name,_age,_gender,_job;
	return {
		setName : function(name){this._name=name;},
		setAge : function(age){this._age=age;},
		setGender : function(gender){this._gender=gender;},
		setJob : function(job){this._job=job;},
		getName : function(){return this._name;},
		getAge : function(){return this._age;},
		getGender : function(){return this._gender;},
		getJob : function(){return this._job;},
		toString : function() { 
			 return this._name+','+this._age+','+this._gender+','+this._job; 
		}
	};
	
})();
/***************************************************************************************
 * View
 * app.component
 * app.navi
 * app.patient
 *
 *
 * **************************************************************************************/

app.component = (function(){
	var _body, _wrapper;
	var setBody = function(body){this._body=body;}
	var getBody = function(){return this._body;}
	var setWrapper = function(wrapper){this._wrapper=wrapper;}
	var getWrapper = function(){return this._wrapper;}
	var init = function(){onCreate();};
	var onCreate = function(){
		setContentView();
	};
	var setContentView = function(){
		app.component.setWrapper($('#wrapper'));
		app.component.setBody($('body'));
	};
	return{
		init : init,
		getWrapper : getWrapper,
		setWrapper : setWrapper,
		getBody : getBody,
		setBody : setBody,
		div : function(id){
			return $(id);
		},
		aButton : function(id,type){
			return $('<a href="#" id="'+id+'" class="btn '+type+'" role="button">example</a>');
		},
		bButton : function(){
			return $('<button id="bButton" type="button" class="btn btn-default">example</button>');
		},
		inputText : function(id){
			return $('<input id="'+id+'" type="text" class="form-control" placeholder="example" aria-describedby="basic-addon1">');
		},
		divAlert : function(type){ // alert-danger
			return $('<div class="alert '+type+'" role="alert">example</div>');
		}
	};
})();
app.navi = (function(){})();
app.patient = (function(){})();
app.algorithm.TABLE=
	 '<table id="table" style="width:800px;height:300px;border-collapse: collapse;border: 1px solid black;margin:0 auto">'
	+	'<tr style="border: 1px solid black;">'
	+		'<td id="tableLeft" style="width: 50%;border: 1px solid black;"></td>'
	+		'<td id="tableRight" style="width: 50%;border: 1px solid black;"></td>'
	+	'</tr>'
	+'</table>';
app.algorithm.SERIES_MENU=
	'<ul class="list-group">'
	+	'<li class="list-group-item"><a id="aSeries"  href="#">등차수열 합33</a></li>'
	+	'<li id="swSeries" class="list-group-item"><a href="#">스위치수열 합</a></li>'
	+	'<li id="dSeries" class="list-group-item"><a href="#">계차수열 합</a></li>'
	+	'<li id="factorial" class="list-group-item"><a href="#">팩토리얼</a></li>'
	+	'<li id="fibonacci" class="list-group-item"><a href="#">피보나치수열 합</a></li>'
	+'</ul>';
app.oop.OOP_MENU=
	'<ul class="list-group">'
	+	'<li id="encap" class="list-group-item"><a href="#">캡슐화</a></li>'
	+	'<li id="inherit" class="list-group-item"><a href="#">상 속</a></li>'
	+	'<li id="poly" class="list-group-item"><a href="#">다형성</a></li>'
	+'</ul>';

/*********************************
 * Controller
 * 
 *
 * ******************************/
app.controller = (function(){})();
