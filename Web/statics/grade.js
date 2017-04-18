﻿$(function(){

var txt1 = ["(差评)","(差评)","(一般)","(一般)","(不错)","(不错)", "(还好)", "(还好)", "(很不错)", "(很不错)"];
//var txt0=["(合适)","(合适)","(俗)","(菜)","(一般)","(还行)","(生动)","(精彩)","(超赞)","(极品)"];
var txt2=["(很贵)","(很贵)","(贵)","(贵)","(正常)","(正常)","(合适)","(合适)","(物超所值)","(物超所值)"];
var txt3 = ["(差评)", "(差评)", "(一般)", "(一般)", "(不错)", "(不错)", "(还好)", "(还好)", "(超赞)", "(超赞)"];
$("#doPoint table tr td span small").each(function(index){
  $(this).mouseover(function(){
    id=index+1;
	var obj=$(this).parent().parent().next().children("em");
	if(id<=10){
		obj.html(txt1[id-1]);
	}else if(id>10 && id<=20){
	  id=id-10;
	  obj.html(txt2[id-1]);
	}else if(id>20 && id<=30){
	  id=id-20;
	  obj.html(txt3[id-1]);
	}
    $(this).parent().removeClass();
    $(this).parent().addClass("star"+id);
	$(this).parent().parent().next().children("strong").html(id);
  });
  var Point1=5;
  var Point2=5;
  var Point3=5;
  $(this).click(function(){
    id=index+1;
	if(id<=10){
	  $("#pointV1").val(id);
	}else if(id>10 && id<=20){
	  id=id-10;
	  $("#pointV2").val(id);
	}else if(id>20 && id<=30){
	  id=id-20;
	  $("#pointV3").val(id);
	}
	$(this).parent().attr("v",id);
	
	var v1=parseInt($("#item1").attr("v"));
	var v2=parseInt($("#item2").attr("v"));
	var v3=parseInt($("#item3").attr("v"));
	var temp_v=(v1+v2+v3)/3;
	var temp_v=Math.round(temp_v*Math.pow(10,1))/Math.pow(10,1);

	var num=temp_v;
	var integer=parseInt(num);
	var flt=num-integer;
	var fltln=(num.toString()).length-(integer.toString()).length-1;
	var fltint=(flt.toString()).substring(2,(fltln+2));
	var fltint=fltint > 0 ? fltint : 0;   
	
	$("#myPoint img").attr("src","statics/star"+integer+".gif");
	$("#myPoint big").html(integer);
	$("#myPoint small").html("."+fltint);
	$("#myPoint em").html(txt0[integer-1]);
  });
  $(this).parent().mouseout(function(){
    var ids=$(this).attr("v");
	id=index+1;
	var obj=$(this).parent().next().children("em");
	if(id<=10){
		obj.html(txt1[ids-1]);
	}else if(id>10 && id<=20){
	  id=id-10;
	  obj.html(txt2[ids-1]);
	}else if(id>20 && id<=30){
	  id=id-20;
	  obj.html(txt3[ids-1]);
	}
	$(this).parent().next().children("strong").html(ids);
    $(this).removeClass();
    $(this).addClass("star"+ids);
  });
});

});