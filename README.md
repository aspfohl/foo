# foo
Simple python template with:
* Poetry dependency manager
* Development libraries with custom configuration for:
    * testing (pytest)
    * formatting (black, isort)
    * linting (pylint, mypy, flake8, pycodestyle)
* Jupyter notebook support
* Basic data science libraries (numpy, pandas, matplotlib)

First time setup:
* Create new repo with this template
* Find and replace "foo" with your package name
* Rename main "foo" folder

## Setup

Requires:
* [python3.9](https://www.python.org/downloads/release/python-397/) or [python3.10](https://www.python.org/downloads/release/python-3100/)
* [poetry (v1.0+)](https://python-poetry.org/docs/)
* (recommended) [vscode](https://code.visualstudio.com/)

To create the virtual environment:

```bash
$ make venv
```

Opening up jupyter notebooks in the python virtual environment:

```bash
$ make run
```


Adding new packages is super easy. Activate the environment and use the `add` command. For example:
```bash
(venv) $ poetry add pandas
```



