var colors = require('colors')

function chop(i, arr, startIndex, endIndex) {
  startIndex = typeof startIndex === 'undefined' ? 0 : startIndex
  endIndex = typeof endIndex === 'undefined' ? arr.length : endIndex
  if (startIndex === endIndex) return -1


  var centerIndex = Math.floor((startIndex + endIndex) / 2)

  if (arr[centerIndex] === i) {
    return centerIndex
  } else if (arr[centerIndex] > i) {
    //search bottom half
    return chop(i, arr, 0, centerIndex)
  } else {
    //search top half
    return chop(i, arr, centerIndex + 1, endIndex)
  }

}

function assertEqual(a, b) {
  if (a === b) {
    console.log('PASS'.green)
  } else {
    console.log('FAIL'.red, 'Expected:', a, 'Got:', b)
  }
}

assertEqual(-1, chop(3, []))
assertEqual(-1, chop(3, [1]))
assertEqual(0,  chop(1, [1]))

assertEqual(0,  chop(1, [1, 3, 5]))
assertEqual(1,  chop(3, [1, 3, 5]))
assertEqual(2,  chop(5, [1, 3, 5]))
assertEqual(-1, chop(0, [1, 3, 5]))
assertEqual(-1, chop(2, [1, 3, 5]))
assertEqual(-1, chop(4, [1, 3, 5]))
assertEqual(-1, chop(6, [1, 3, 5]))

assertEqual(0,  chop(1, [1, 3, 5, 7]))
assertEqual(1,  chop(3, [1, 3, 5, 7]))
assertEqual(2,  chop(5, [1, 3, 5, 7]))
assertEqual(3,  chop(7, [1, 3, 5, 7]))
assertEqual(-1, chop(0, [1, 3, 5, 7]))
assertEqual(-1, chop(2, [1, 3, 5, 7]))
assertEqual(-1, chop(4, [1, 3, 5, 7]))
assertEqual(-1, chop(6, [1, 3, 5, 7]))
assertEqual(-1, chop(8, [1, 3, 5, 7]))
assertEqual(0, chop(0, [0, 3, 5, 7]))
