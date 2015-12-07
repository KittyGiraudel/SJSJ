# Metalsmith

[Metalsmith](http://metalsmith.io/) is an abstraction for manipulating a directory of files. To put it simply, it is a static site generator.

Metalsmith, at its core, takes files in a source directory, perform operations on them via plugins, and writes those files into a destination directory. Plugins can do virtually anything: create new files, filter out files, modify files based on some logic, etc (note this means that plugin order does matter; transformations done by one plugin can be seen and used by following plugins, making the process a modular build pipeline). The entire ecosystem of plugins is what makes Metalsmith so flexible.

