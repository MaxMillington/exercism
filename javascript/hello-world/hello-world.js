//
// This is only a SKELETON file for the 'Hello World' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

var HelloWorld = function() {};

HelloWorld.prototype.hello = function(input) {
    input = input || "world";
    return "Hello, " + input + "!";
};

module.exports = HelloWorld;
