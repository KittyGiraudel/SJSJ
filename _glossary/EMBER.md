---
title: Ember
excerpt: an application framework based on the model-view-controller pattern
---

# Ember

[Ember](http://emberjs.com/) is an application framework based on the model-view-controller pattern. By incorporating common patterns and idioms into the framework it aims to allow developers to create ambitious web applications quickly and easily. A side-effect of these abilities (either negative or positive depending upon the readers point of view) is that a certain conformity of naming and structure within those applications is expected.

A key aim of the Ember project is that backward compatibility is an important feature of the framework so that applications may be built with Ember in the knowledge that future releases of the framework will not break those applications.

Ember relies upon the following [core concepts](https://guides.emberjs.com/v2.1.0/getting-started/core-concepts/):

 - **Templates**: Ember.js templates use [handlebars](http://handlebarsjs.com/) style syntax and are used to integrate data with pre-written HTML.
 - **Models**: In Ember.js models allow the objects which the web application makes use of to be persisted.
 - **Components**: Components are used to define the behavior of the user interface in Ember.js. By combining a template and some javascript a component works to produce a representation which is useful to the web application user.
 - **Routes**: A route loads a component, a template and, optionally, some models. The resulting HTML is then rendered to the user agent.
 - **The Router**: Maps a URL to a given route.
