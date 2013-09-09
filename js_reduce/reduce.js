var array = [1,2,3,4,5,6]

var sum_array = array.reduce(function(previousValue,currentValue){
  previousValue += currentValue
  return previousValue
})

console.log("Sum of array:",sum_array)
