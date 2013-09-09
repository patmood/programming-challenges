#Sum an array with JS reduce method

Popular interview question

##Syntax:

```javascript
array.reduce(callback[, initialValue])
```

Parameters

**callback:**
Function to execute on each value in the array, taking four arguments:
*previousValue: The value previously returned in the last invocation of the callback, or initialValue, if supplied. (See below.)
*currentValue: The current element being processed in the array.
*index: The index of the current element being processed in the array.
*array: The array reduce was called upon.

**initialValue:**
Object to use as the first argument to the first call of the callback.
