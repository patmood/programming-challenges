function slowDouble(x, callback) {
  setTimeout(function() {
    callback(2 * x)
  }, 500)
}

var count = 0
var total = 0

function slowDoubleTenTimes(n, x,callback){
  console.log("X is currently:",x)
  if (n === 0){
    callback(x)
    return
  } else {
    slowDouble(x, function(newx){
      slowDoubleTenTimes(n-1,newx,callback)
    })
  }
}


// I'm running this file with node for fun...

if (!module.parent){

  // slowDouble(5, function(result) {
  //   console.log('The result is: ' + result);
  // });

  slowDoubleTenTimes(10,3, function(result){
    console.log('The result of slowDoubleTenTimes is ' + result)
  });

  /*
    yields the following:
    > -> undefined
    > The result of slowDoubleTenTimes is 3072
    */
}
