---
title: JSPM
---

# JSPM

[JSPM](http://jspm.io/) is a package manager coupled with its own build system. Thus, any kind of module can be loaded (e.g ES6, AMD, CommonJS) within the current installed modules. Those modules can be loaded from NPM, as well as Github, Bitbucket or Bower. JSPM creates its own dependencies folder in the project directory, called `jspm_packages`, instead of the regular `node_modules` folder.

## Usage

- `npm install -g jspm`: Install the JSPM CLI.
- `jspm init`: Initialize the current project with JSPM.
- `jspm install lodash`: Install packages, just like NPM.
- `jspm install github:lodash/lodash@4.6.1`: Install the specified. version from Github.
- `jspm bundle app/main --inject`: Bundle the app, just like [Browserify](http://browserify.org/).

See the [JSPM documentation](http://jspm.io/docs/) for further details.
