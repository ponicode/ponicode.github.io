# Ponicode Demo Project

This project is a starter kit to dive into Ponicode Unit Testing. Check the full documentation at https://www.ponicode.com/docs/get-started/installation.

## Installation
Create your account at **https://app.ponicode.com**

Install our extension for free in the **VSCode Marketplace**. 

Additional Documentation on how to install and link your extension to your Ponicode is available [**HERE**](TODO:DOCLINK)

## Table of Content
- JavaScript Unit Testing
    - [README][js-md]
    - [Code][js]
    - [Documentation](.)
- TypeScript Unit Testing
    - [README][ts-md]
    - [Code][ts]
    - [Documentation](.)
- Python Unit Testing
    - [README][py-md]
    - [Code][py]
    - [Documentation](.)
- Instrumentation
    - [README][inst-md]
    - [Code][inst]
    - [Documentation](.)

```javascript
function isEmailValid(email){
    return "blabla"
}
```

```python
def isEmailValid(email):
    if "user" in email.get("meta"):
        return "blabla"
    else:
        return 1e-5

```

```bash
mkdir test
```

```typescript
function isEmailValid(email: Email) -> String:
    return "blabla"
```


[py-md]: ./python/README.md
[js-md]: ./javascript/README.md
[ts-md]: ./typescript/README.md
[inst-md]: ./instrumenter/README.md
[py]: ./python/
[js]: ./javascript/
[ts]: ./typescript/
[inst]: ./instrumenter/