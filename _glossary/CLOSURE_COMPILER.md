---
title: Closure Compiler
---

# Closure Compiler

The [Closure Compiler](https://developers.google.com/closure/compiler/) is a tool for making JavaScript download and run faster. It is a true compiler for JavaScript. Instead of compiling from a source language to machine code, it compiles from JavaScript to better JavaScript. It parses your JavaScript, analyzes it, removes dead code and rewrites and minimizes what's left. It also checks syntax, variable references, and types, and warns about common JavaScript pitfalls.

## Usage

*Closure-compiler requires java to be installed and in the path.*

The compiler package now includes build tool plugins for [Grunt](/_glossary/GRUNT.md) and [Gulp](/_glossary/GULP.md).

### Installation

```sh
npm install --save google-closure-compiler
```

### Configuration

The compiler has a large number of flags. The best documentation for the flags can be found by running the `--help` command of the `compiler.jar` found inside the `node_modules/google-closure-compiler` folder:

```sh
java -jar compiler.jar --help
```

### Specifying Options

Both the grunt and gulp tasks take options objects. The option parameters map directly to the compiler flags without the leading '--' characters.

Values are either strings or booleans. Options which have multiple values can be arrays.

```js
{
  js: ['/file-one.js', '/file-two.js'],
  compilation_level: 'ADVANCED',
  js_output_file: 'out.js',
  debug: true
}
```

For advanced usages, the options may be specified as an array of strings. These values include the "--" characters and are directly passed to the compiler in the order specified:

```js
[
  '--js', '/file-one.js',
  '--js', '/file-two.js',
  '--compilation_level', 'ADVANCED',
  '--js_output_file', 'out.js',
  '--debug'
]
```

When an array of flags is passed, the input files should not be specified via the build tools, but rather as compilation flags directly.

Some shells (particularly windows) try to do expansion on globs rather than passing the string on to the compiler. To prevent this it is necessary to quote certain arguments:

```js
{
  js: '"my/quoted/glob/**.js"',
  compilation_level: 'ADVANCED',
  js_output_file: 'out.js',
  debug: true
}
```

## Using the Grunt Task

Include the plugin in your `Gruntfile.js`:

```js
require('google-closure-compiler').grunt(grunt);
// The load-grunt-tasks plugin won't automatically load closure-compiler
```
 
Task targets, files and options may be specified according to the grunt [Configuring tasks](http://gruntjs.com/configuring-tasks) guide.

### Basic Configuration Example:

```js
require('google-closure-compiler').grunt(grunt);
 
// Project configuration. 
grunt.initConfig({
  'closure-compiler': {
    my_target: {
      files: {
        'dest/output.min.js': ['src/js/**/*.js']
      },
      options: {
        compilation_level: 'SIMPLE',
        language_in: 'ECMASCRIPT5_STRICT',
        create_source_map: 'dest/output.min.js.map',
        output_wrapper: '(function(){\n%output%\n}).call(this)\n//# sourceMappingURL=output.min.js.map'
      }
    }
  }
});
```

## Using the Gulp Plugin

The gulp plugin supports piping multiple files through the compiler.

Options are a direct match to the compiler flags without the leading "--".

### Basic Configuration Example:

```js
var closureCompiler = require('google-closure-compiler').gulp();
 
gulp.task('js-compile', function () {
  return gulp.src('./src/js/**/*.js', {base: './'})
      .pipe(closureCompiler({
          compilation_level: 'SIMPLE',
          warning_level: 'VERBOSE',
          language_in: 'ECMASCRIPT6_STRICT',
          language_out: 'ECMASCRIPT5_STRICT',
          output_wrapper: '(function(){\n%output%\n}).call(this)',
          js_output_file: 'output.min.js'
        }))
      .pipe(gulp.dest('./dist/js'));
});
```

----------

*Source:*

- [Google Closure Compiler](https://github.com/google/closure-compiler)*. GitHub repo.*
