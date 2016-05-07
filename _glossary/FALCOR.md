---
title: Falcor
excerpt: a JavaScript library for efficient data fetching
---

# Falcor

[Falcor](https://netflix.github.io/falcor/) is a JavaScript library for efficient data fetching.

### One Model Everywhere

Falcor lets you represent all your remote data sources as a single domain model via a virtual [JSON](/_glossary/JSON.md) graph. You code the same way no matter where the data is, whether in memory on the client or over the network on the server.

### The Data is the API

A JavaScript-like path syntax makes it easy to access as much or as little data as you want, when you want it. You retrieve your data using familiar JavaScript operations like get, set, and call. If you know your data, you know your API.

### Bind to the Cloud

Falcor automatically traverses references in your graph and makes requests as needed. Falcor transparently handles all network communications, opportunistically batching and de-duping requests.

## Getting Started

You can check out a working example server for a Netflix-like application [here](http://github.com/netflix/falcor-express-demo) right now. Alternately you can go through this barebones tutorial in which we use the Falcor Router to create a Virtual JSON resource. In this tutorial we will use Falcor’s express middleware to serve the Virtual JSON resource on an application server at the URL /model.json. We will also host a static web page on the same server which retrieves data from the Virtual JSON resource.

### Creating a Virtual JSON Resource

In this example we will use the Falcor Router to build a Virtual JSON resource on an app server and host it at `/model.json`. The JSON resource will contain the following contents:

```json
{
  "greeting": "Hello World"
}
```

Normally Routers retrieve the data for their Virtual JSON resource from backend datastores or other web services on-demand. However in this simple tutorial the Router will simply return static data for a single key.

First we create a folder for our application server.

```sh
mkdir falcor-app-server
cd falcor-app-server
npm init
```

Now we install the falcor Router.

```sh
npm install falcor-router --save
```

Then install express and falcor-express. Support for [restify](https://github.com/netflix/falcor-restify), and [Hapi](https://github.com/netflix/falcor-hapi) is also available.

```sh
npm install express --save
npm install falcor-express --save
```

Now we create an `index.js` file with the following contents:

```js
// index.js
var falcorExpress = require('falcor-express');
var Router = require('falcor-router');
var express = require('express');
var app = express();

app.use('/model.json', falcorExpress.dataSourceRoute(function (req, res) {
  // create a Virtual JSON resource with single key (“greeting”)
  return new Router([
    {
      // match a request for the key “greeting”
      route: 'greeting',
      // respond with a PathValue with the value of “Hello World”
      get: function () {
        return {
          path: ['greeting'],
          value: 'Hello World'
        };
      }
    }
  ]);
}));

// serve static files from current directory
app.use(express.static(__dirname + '/'));

var server = app.listen(3000);
```

Now we run the server, which will listen on port 3000 for requests for `/model.json`.

```sh
node index.js
```

### Retrieving Data from the Virtual JSON resource

Now that we’ve built a simple virtual JSON document with a single read-only key “greeting”, we will create a test web page and retrieve this key from the server.

Now create an index.html file with the following contents:

```html
<!-- index.html -->
<html>
  <head>
    <!-- Do _not_  rely on this URL in production. Use only during development.  -->
    <script src="//netflix.github.io/falcor/build/falcor.browser.js"></script>
    <script>
      var model = new falcor.Model({
        source: new falcor.HttpDataSource('/model.json')
      });

      // retrieve the “greeting” key from the root of the Virtual JSON resource
      model
        .get('greeting')
        .then(function (response) {
          document.write(response.json.greeting);
        });
    </script>
  </head>
  <body>
  </body>
</html>
```

Now visit http://localhost:3000/index.html and you should see the message retrieved from the server:

![“Hello world” demo from Falcor rendering in a browser](http://netflix.github.io/falcor/starter/helloworld.png)

*This section was taken from [Falcor documentation site](http://netflix.github.io/falcor/).*
