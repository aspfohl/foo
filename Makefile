
clean:
	rm -rf .venv

	rm -rf ".mypy_cache"
	find . -name "*.pyc" -delete
	find . -name "__pycache__" -delete
	find . -name "*-checkpoint.ipynb" -delete


venv: clean
	echo $(python_version)
	python3 -m venv .venv
	poetry install
	echo "To activate, use 'source ./.venv/bin/activate'"
	echo "To deactivate, use 'deactivate'"


run:
	poetry run jupyter notebook --notebook-dir=adhoc