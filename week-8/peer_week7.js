
function seprateComma(num) {

  var revNum = num.toString().split("").reverse().join("");
  var corNum = [];

  while (revNum.length >= 4){
    corNum.push(revNum.substring(0,3) + ",");
    revNum = (revNum.slice(3));
    }

  corNum.push(revNum.substring());

  console.log(corNum.join("").split("").reverse().join(""));

};

seprateComma(1234567890);