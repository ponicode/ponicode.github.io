# Testable Functions
The Ponicode icon appears next to all functions that Ponicode can help you test. As you might have noticed, not all functions are handled yet but we are working hard to cover more and more functions. As a user, you can help us by telling us which type of functions you would love Ponicode to help you with. The best way to do that is to drop us a line on the [**Ponicode Community Slack**][commslack].

## Scope
Ponicode generally supports functions that are reachable from the global scope. Therefore, functions nested inside other functions are not yet testable.

## Class methods
For now, we do not cover:

- Static methods
- Getters
- Setters
- Constructors
  
We do cover all other kinds of class methods.

## Asynchronous functions
Ponicode supports asynchronous functions as long as they are explicitly marked async: they need to have the `async` keyword. We do not yet support the `.then` format.

## Testable input parameters
As of today, the Ponicode interface does not yet support three types of input and output values:

- Class instances
- Callbacks
- Symbols

This means that, for example, for a given function like:

```bash
cd demo-project
npm install
npm start
```

A Ponicode logo will appear on the left side of the function, but the Ponicode interface does not allow to generate a test passing a function value to it.

[commslack]: https://ponicode-community.slack.com/join/shared_invite/zt-fiq4fhkg-DE~a_FkJ7xtiZxW7efyA4Q#/