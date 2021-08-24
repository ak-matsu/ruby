


//今日の日付データを変数に格納
//変数は"today"とする
var today=new Date(); 

//年・月・日・曜日を取得
var year = today.getFullYear();
var month = today.getMonth()+1;
var week = today.getDay();
var day = today.getDate();

var week_ja= new Array("日","月","火","水","木","金","土");

//年・月・日・曜日を書き出す
document.write("DC"+(year-(1998))+"年"+month+"月"+day+"日 "+week_ja[week]+"曜日");
setInterval('showClock()',1000);

function showClock() {
  var nowTime = new Date();
  var nowHour = nowTime.getHours();
  var nowMin  = nowTime.getMinutes();
  var nowSec  = nowTime.getSeconds();
  var msg = "現在時刻は、" + nowHour + ":" + nowMin + ":" + nowSec + " です。";
  document.getElementById("RealtimeClockArea").innerHTML = msg;
}

