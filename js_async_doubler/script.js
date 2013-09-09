function slowDouble(x,callback){
  setTimeout(function() {
    callback(2*x)
  }, 500)
}

// slowDouble(5, function(result){
//   console.log('The result is',result)
// })

function slowDoubleTenTimes(x, callback, n) {
  var n = n || 0
  console.log("n:",n,"x:",x)
  if (n === 10) {
    callback(x)
    return
  } else {
    slowDouble(x,function(doublex){
      slowDoubleTenTimes(doublex,callback,n+1)
    })
  }
}

slowDoubleTenTimes(3, function(result){
  console.log('The result of slowDoubleTenTimes is',result)
})
