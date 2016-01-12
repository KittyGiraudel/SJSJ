# Q

[Q](http://documentup.com/kriskowal/q/) is a [promise](PROMISE.md) library providing many more utilities than the native Promise implementation.

List of features:

- Deferred values (old school): `Q.defer`
- Multiple promises handling: `Q.all, Q.any, Q.spread`
- Promise creation, resolve and reject: `Q(value), Q.when(value), Q.reject(value)`
- Convert properties to promises: `Q.get, Q.set`
- Convert functions to promises: `Q.fcall, Q.invoke`
- Convert node-based callbacks to promises: `Q.nfcall, Q.ninvoke`
- Convert timeout functions: `Q.timeout`
- Support notify functions
- Support chaining and tapping

Real world example from a [Node.js](NODEJS.md) application:

```js
// Traditional implementation
function authenticate (req, res, next) {
  User.findOne({ id: req.id }, function (err, user) {
    if (err) {
      return next('not found')
    }

    user.save(function (err, response) {
      // ...
    });
  });
}

// Q Based
function authenticate(req, res, next) {
  return Q(req.id)
    .then(function (id) {
       return Q.nfcall(User, 'findOne', id);
    })
    .then(function (user) {
       return Q.ninvoke(user, 'save');
    })
    .then(function (saved) {
       return res.send(201);
    })
    .catch(function (err) {
      return next(err);
    });
}
```
