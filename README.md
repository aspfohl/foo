# adhoc-venv
Poetry virtual environment with very basic data science python packages for running adhoc & exploratory things in jupyter notebooks

## Setup

Install [poetry](https://python-poetry.org/docs/)


## Running

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
$ source ./.venv/bin/activate
(venv) $ poetry add pandas
(venv) $ deactivate
$ 
```



