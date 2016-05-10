# Passport.js

[Passport.js](http://passportjs.org/) is a simple authentication middleware for Node.js that is express compatible.

It focuses primarily on authentication requests through a comprehensive list of strategies including username and password credentials, OAuth (Facebook, Twitter, Google+) and SAML. These strategies are packaged as individual modules to prevent unnecessary dependencies. 

Passport is also designed to be flexible as it does not mount route and database independent. The API is simple: you provide Passport a request to authenticate, and it provides hooks to control what occurs when authentication succeeds or fails.