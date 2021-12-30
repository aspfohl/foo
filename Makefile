PROJECT_NAME=foo

venv: clean
	echo $(python_version)
	python3 -m venv .venv
	poetry run pip install --upgrade pip
	poetry install
	echo "To activate, use 'source ./.venv/bin/activate'"
	echo "To deactivate, use 'deactivate'"

clean: clean_py
	rm -rf .venv
	rm -rf .has-*

clean_py:
	rm -rf ".mypy_cache"
	find . -name "*.pyc" -delete
	find . -name "__pycache__" -delete
	rm -rf .cache .eggs ${PROJECT_NAME}.egg-info dist build

notebook:
	poetry run jupyter notebook