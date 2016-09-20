---
title: Pure Function
excerpt: a functionnal programming paradigm that ensures that a function has some strict properties. 
---

# Pure Function

A *pure function* is a paradigm from Functionnal Programming world.

The main idea is that a pure function respect the following properties: 

1. For a given input, it will always produce the same output. 
2. It doesn’t produce any side-effect.
3. It doesn’t rely on any external state.

## For a given input, always the same output

```js
// The following function is not Pure because different calls with same argument will not produce the same output :
function impureAdd(input){ 
    var output = input + Math.Random(); 
    return output;
}

// A way to make a pure function of it is to extract the impredictable part and give this responsibility to the caller :
function pureAdd(input, randomValue){
    var output = input + randomValue;
    return output; 
}

var randomAdd = pureAdd(5, Math.Random());
```

## It doesn’t produce any side-effect

```js
// The following function is not Pure because it has a side effect : it write in the environnement’s console
function impureFunction(input){
    var output = computeHashValue(input);
    console.log("computed output" : + output);
    return output;
}

// To make it pure, again, the caller has the responsibility to pass the desired side effects.
function pureFunction(input, traceCallback){
    var output = computeHashValue(input);
    if(traceCallback)
        traceCallback("computed output" : + output);
    return output;
}

var output = pureFunction("some input",  s =>  console.log(s));
```


## It doesn’t rely on any external state

```js
var applicationState = {
    businessTreshold = 92;
}

// The following function is not Pure because it relies on a global variable, an external state from the point of view of the function
function impureValidation(inputScore){
    return input < applicationState.businessTreshold;
}

// To make it pure, again, the caller has the responsibility to pass the needed state for the function to run
function pureValidation(inputScore, threshold){
    return input < threshold;
}

var output = pureFunction(70, applicationState.businessTreshold);
```


----------

*Source:*
- [Wikipedia Article](https://en.wikipedia.org/wiki/Pure_function)*. From Wikipedia, the free encyclopedia.*
- [Eric Elliot on Pure Function](https://medium.com/javascript-scene/master-the-javascript-interview-what-is-a-pure-function-d1c076bec976#.knhvq7k0z)*. Article from Medium’s JavaScript Scene top contributor Eric Elliott.*