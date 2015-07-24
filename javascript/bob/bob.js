//
// This is only a SKELETON file for the "Bob" exercise. It's been provided as a
// convenience to get you started writing code faster.
//

var Bob = function() {};

Bob.prototype.hey = function(input) {

    if(input == '' || !input.trim()) {
        return "Fine. Be that way!"
    } else if(input.slice(-1) === "?" && !isNaN(parseInt(input.slice(-2), 10))) {
        return "Sure.";
    } else if(input === input.toUpperCase() &&
        isNaN(parseInt(input.slice(-1), 10))) {
        return "Whoa, chill out!";
    } else if(input.slice(-1) === "?") {
        return "Sure.";
    } else {
    return "Whatever.";
    }
};

module.exports = Bob;
