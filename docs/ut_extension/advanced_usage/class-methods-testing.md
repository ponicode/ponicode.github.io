# Class Methods Testing

Ponicode Unit Text Extension now supports method testing.

> **<span style="color:green">NOTE<span>**
> 
> Method support is available for JavaScript & TypeScript

### Steps
1. Look for a class of interest you want the method tested
2. Look nfor available ponies on the left
3. Right-click on the desired method and select *"Ponicode: Unit Test"*
4. Select the relevant test cases and modify the initialization in the **Before each** section

## Demo Project Samples
On the demo project in the `[javascript|typescript]` folder open the `d_methods.[js|ts]` file.

```javascript
export class Requestor {
    headers
    constructor(
        auth_token,
        version,
        ) {
        this.headers = {authorization : `Bearer: ${auth_token}`, 'X-Version':version}
    }
    async get_post_response(url, data ){
        try {
            const options = {
                headers: this.headers,
            };
            const response = await axios.post(url, data,options)
            if (response.status != 200) {
                this.Reporter.log(`Request not valid for url ${url}` )
            }
            return response
        }
        catch (e) {
            let error_data = {
                type: "ErrorReport",
                message: "Request failure",
                error: e.string,
                data: {
                    url: url,
                    data: data
                }
            }
            this.Reporter.request_report.push(error_data)
            if (!e.isAxiosError) {
                this.Reporter.log("PROBLEM")
                }
                const err = e
                if (err) {
                    this.Reporter.log(err.code)
                    this.Reporter.log(err.response && err.response.status)
                    this.Reporter.log(err.response && err.response.data)
                }
            throw('Error with request')
        }

    }
}
```

A `Requestor` class object is available. Right-click on the `get_post_response` method and select *"Ponicode: Unit Test"*. The Ponicode Webview on the right contains a new section named **Before each**

![Before Each](images/methods_1.png)

This section allows you to instantiate a context before testing your methods. You can for example instantiate you class instance.

Once you add a test case to your file you can observe the test file integrates a `beforeEach` statement.

```javascript
const d_methods = require("./d_methods")
// @ponicode
describe("inst.get_post_response", () => {
    let inst

    beforeEach(() => {
        inst = new d_methods.Requestor()
    })

    test("0", async () => {
        await inst.get_post_response("https://ponicode.com/", { isPonicodeSuper: true })
    })
})
```
