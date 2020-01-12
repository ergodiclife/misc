.DEFAULT_GOAL := help

.PHONY: black
black:
	black --target-version py38 code

.PHONY: lint
	mypy code

.PHONY: test
	pytest --cov-report html

.PHONY: dist
dist:  ## Builds source and wheel package.
	python setup.py sdist; \
	python setup.py bdist_wheel; \
	ls -l dist;

.PHONY: setup
setup:
	python -m pip install -Ur requirements.txt

