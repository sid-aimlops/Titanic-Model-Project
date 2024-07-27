# Makefile. To test Git
.PHONY: build test lint

install:
	@echo "Installing requirements..."
	pip install --upgrade pip &&\
		pip install -r requirements/requirements.txt

build:
	@echo "Building the project..."
	# Example build command:
	python setup.py install

format:
	@echo "formating..."
	black *.py
lint:
	@echo "linking..."
	pylint --disable=R,C script.py
test:
	@echo "Running tests..."
	python -m pytest tests/test_*.py

all: install lint test format