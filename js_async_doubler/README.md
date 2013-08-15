JavaScript
======

Imagine you have the following function, which is a function that takes a really long time to come back. It slowly doubles a number, and fires a callback with the result as an argument.

```javascript
function slowDouble(x, callback) {
  setTimeout(function() {
    callback(2 * x);
  }, 500);
}
```

An example of calling `slowDouble`:

```javascript
slowDouble(5, function(result) {
  console.log('The result is: ' + result);
});

/*
  yields the following:
  > -> undefined
  > The result is: 10
*/
```

Write a function named `slowDoubleTenTimes` that takes a number, and a callback, which prints the results of applying `slowDouble` to the input number 10 times and feeds the result into the callback.

```javascript
slowDoubleTenTimes(3, function(result){
  console.log('The result of slowDoubleTenTimes is ' + result)
});

/*
  yields the following:
  > -> undefined
  > The result of slowDoubleTenTimes is 3072
*/

```

Ruby
====

The `ROT13` cipher is an ancient enocoding that, given a message, returns a message where each letter has been replaced by the letter exactly 12 letters after it in the alphabet ordering. Letters near the end of the alphabet wrap around. The translation table looks like:

    ABCDEFGHIJKLMNOPQRSTUVWXYZ
    NOPQRSTUVWXYZABCDEFGHIJKLM

and therefore the message **HELLO** becomes **URYYB**

Please implement `rotx` in Ruby, which given a rotation number and a string, outputs the string rotated by that many letters. It should preserve capitalization and ignore any non-alphabetic character. It should also take a parameter that decrypts the string instead of encrypting it. For example:

```ruby
def rotx(x, string, cipher=:encrypt)
  # Your implementation here...
end

rotx 10, 'Hello, World'
# => "Rovvy, Gybvn"
rotx 10, 'Rovvy, Gybvn', :decrypt
# => "Hello, World"

# Bonus: rotation numbers greater than 26 should work as well
rotx 36, 'Hello, World'
# => "Rovvy, Gybvn"
```
