---
title: Flow
excerpt: a static type checker, designed to find type errors in JavaScript programs
---

# Flow

[Flow](http://flowtype.org/) is a static type checker for JavaScript. It can be used to catch common bugs in JavaScript programs - such as silent type conversions, null dereferences and so on - often without requiring any changes to your code. It also adds type syntax to JavaScript, so that developers can express invariants about their code and have them maintained automatically.

Flow’s type checking is **opt-in**: files are not type checked unless you ask it to. This means that you can gradually convert your JavaScript codebase to Flow while reaping incremental benefits. When you do opt-in a file, Flow tries to type check the code automatically by performing type inference, reporting errors without further manual guidance. This simple workflow is usually sufficient when your codebase is broken down into small files, each defining a module that exports a well-defined interface. However, for some files (e.g., monolithic libraries), the analysis Flow performs might turn out to be too imprecise, causing lots of spurious errors to be reported. In such cases, the developer can either try to manually guide Flow with type annotations, or switch to a [weaker mode](http://flowtype.org/docs/existing.html#weak-mode) with limited type inference to reduce noise.

Flow’s type checking is **online**: it performs an initial analysis of all files in a code base, and then monitors those files for subsequent changes, type checking them and other dependencies piecemeal and proactively in the background. For the developer, this means that there are no perceptible compile-time delays; saving a bunch of files in an editor or rebasing a set of files in a repository automatically triggers type checking, storing the results in a persistent server, so that they are available instantaneously when queried.

## How does it work?

Flow designed to find type errors in JavaScript programs:

```js
/* @flow */
function foo(x) {
  return x * 10;
}

foo('Hello, world!');
```

```sh
$> flow

hello.js:5:5,19: string
This type is incompatible with
  hello.js:3:10,15: number
```

Flow also lets you gradually evolve JavaScript code into typed code:

```js
/* @flow */
function foo(x: string, y: number): string {
  return x.length * y;
}

foo('Hello', 42);
```

```sh
$> flow

hello.js:3:10,21: number
This type is incompatible with
  hello.js:2:37,42: string
```

Typed Flow code easily transforms down to regular JavaScript, so it runs anywhere.

## Why Flow?

The goal of Flow is to find errors in JavaScript code with little programmer effort. Flow relies heavily on **type inference** to find type errors even when the program has not been annotated - it precisely tracks the types of variables as they flow through the program.

At the same time, Flow is a **gradual** type system. Any parts of your program that are dynamic in nature can easily bypass the type checker, so you can mix statically typed code with dynamic code.

Flow also supports a highly **expressive** type language. Flow types can express much more fine-grained distinctions than traditional type systems. For example, Flow helps you catch errors involving null, unlike most type systems.

## Using Flow

Start with [Getting Started](http://flowtype.org/docs/getting-started.html) guide to download and try Flow yourself. Flow is open-source, so you can also start with the code on the [GitHub repo](https://github.com/facebook/flow).

----------

*Source:*

- [Flow | A static type checker for JavaScript](http://flowtype.org/)*.*
