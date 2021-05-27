# Run Ponicode On Your Own Project

## JavaScript

To generate tests for your JavaScript files, you do not need any configuration, but you might want to make sure that `jest` and `rewire` are installed as dev dependencies so that you can run your test cases in the Ponicode interface.

```bash
npm install --save-dev jest rewire
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
