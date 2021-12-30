# foo
Template python repo with poetry virtual environment, adhoc jupyter notebooks, VSCode config, and standard python development libraries. To get started, find and replace all instances of "foo" with your library name. Make sure to also rename the main folder.

## Setup

Requires:
* [python3.9](https://www.python.org/downloads/release/python-397/)
* [poetry](https://python-poetry.org/docs/)
* (recommended) [vscode](https://code.visualstudio.com/)

To create venv:

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
$ 
```



