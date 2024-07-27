# Makefile. To test Git
install:
	@echo "Installing requirements..."
	pip install --upgrade pip &&\
		pip install -r requirements/requirements.txt
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