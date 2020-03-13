# adhoc-venv
Bare poetry venv for running pre-dev/adhoc things in jupyter notebooks

## Setup

Install [poetry](https://python-poetry.org/docs/)


## Running

To create venv:

```bash
$ make venv
```


To activate:

```bash
$ source ./.venv/bin/activate
```

To deactivate:

```bash
$ deactivate
```

Adding new packages is super easy:
```bash
$ source ./.venv/bin/activate
...
(venv) $ poetry add pandas
```


Opening up jupyter notebooks in the venv:

```bash
$ make run
```
