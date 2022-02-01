PROJECT_NAME=foo
TEST_FOLDER=tests

venv: clean
	echo Building venv with $(python3 --version)
	python3 -m venv .venv
	poetry run pip install --upgrade pip
	poetry install
	echo "To activate, use 'source ./.venv/bin/activate'"
	echo "To deactivate, use 'deactivate'"

clean:
	# python artifacts
	rm -rf ".mypy_cache"
	find . -name "*.pyc" -delete
	find . -name "__pycache__" -delete
	rm -rf .cache .eggs ${PROJECT_NAME}.egg-info dist build
	rm -rf .coverage .mypy_cache .pytest_cache

	# virtual environment
	rm -rf .venv

format:
	poetry run black ${PROJECT_NAME}
	poetry run black ${TEST_FOLDER}
	poetry run isort ${PROJECT_NAME}
	poetry run isort ${TEST_FOLDER}

notebook:
	poetry run jupyter notebook

test:
	echo "Running tests"
	poetry run pytest --cov-report term-missing --cov=${PROJECT_NAME} ${TEST_FOLDER}

	echo "Checking formatting"
	poetry run black --check ${PROJECT_NAME} ${TEST_FOLDER}
	poetry run isort --check-only ${PROJECT_NAME} ${TEST_FOLDER}

	echo "Checking linting"
	poetry run flake8 --exit-zero ${PROJECT_NAME} ${TEST_FOLDER}
	# poetry run pylint ${PROJECT_NAME} ${TEST_FOLDER}
	poetry run mypy --follow-imports=silent --package ${PROJECT_NAME}
	poetry run pycodestyle ${PROJECT_NAME} ${TEST_FOLDER}