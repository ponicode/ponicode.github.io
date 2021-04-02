# Run Ponicode On Your Own Project

## JavaScript
To generate tests for your JavaScript files, you do not need any configuration.

In case you need the `History` section to start, you'll need to install the `ponicode` package via npm
```bash
npm install -g ponicode@latest
```

Additional packages might be needed to run test cases in the webview
```bash
npm install jest
npm install rewire
```

## Python
To generate tests for your Python files, you do not need any configuration.

> **NOTE**
> 
> To run the tests you'll need to install `pytest` and `pytest-mock` on your Python virtual environment

```bash
# Use pip
pip install pytest pytest-mock
# Use conda
conda install pytest pytest-mock
```

## TypeScript

To use Ponicode on your **TypeScript** project, in addition to what is described on the **JavaScript** part above, you should have :
- A `tsconfig.json` file,
- Compile your project via `tsc -p .` or `tsc -w -p .` in watch mode.