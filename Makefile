#################################################################################
# GLOBALS                                                                       #
#################################################################################

PROJECT_NAME = predict-pet-adoption
PYTHON_VERSION = 3.10
PYTHON_INTERPRETER = python

#################################################################################
# COMMANDS                                                                      #
#################################################################################

## Install Python Dependencies
.PHONY: requirements
requirements:
	conda env update --file environment.yml --name $(PROJECT_NAME)
	conda install -c conda-forge jupyter -y
	
## Create Virtual Environment and Install Dependencies
.PHONY: create-environment
create-environment:
	conda create --name $(PROJECT_NAME) python=$(PYTHON_VERSION) -y
	@echo ">>> conda env created. Activate with:\nconda activate $(PROJECT_NAME)"
	@echo ">>> Install dependencies with: make requirements"

## Delete all compiled Python files
.PHONY: clean
clean:
	find . -type f -name "*.py[co]" -delete
	find . -type d -name "__pycache__" -delete
	rm -rf $(PROJECT_NAME)

## Run Notebooks: Execute Data Exploration, Data Processing, and Model Training
.PHONY: run-notebooks
run-notebooks: requirements
	$(PYTHON_INTERPRETER) -m jupyter nbconvert --to notebook --execute --inplace notebooks/1-data-exploration.ipynb
	$(PYTHON_INTERPRETER) -m jupyter nbconvert --to notebook --execute --inplace notebooks/2-data-transformation.ipynb
	$(PYTHON_INTERPRETER) -m jupyter nbconvert --to notebook --execute --inplace notebooks/3-model-training.ipynb

## Execute the model training directly from Python scripts (optional)
.PHONY: run-scripts
run-scripts: requirements
	$(PYTHON_INTERPRETER) scripts/data_exploration.py
	$(PYTHON_INTERPRETER) scripts/data_processing.py
	$(PYTHON_INTERPRETER) scripts/model_training.py

## Format source code with black
.PHONY: format
format:
	black --config pyproject.toml predict-pet-adoption

## Lint using flake8 and black
.PHONY: lint
lint:
	flake8 predict-pet-adoption
	isort --check --diff --profile black predict-pet-adoption
	black --check --config pyproject.toml predict-pet-adoption

#################################################################################
# PROJECT RULES                                                                 #
#################################################################################

## Make Dataset
.PHONY: data
data: requirements
	$(PYTHON_INTERPRETER) predict-pet-adoption/dataset.py

## Rebuild: Remove previous environment and rebuild the project
.PHONY: rebuild
rebuild: clean create_environment requirements

#################################################################################
# Self Documenting Commands                                                     #
#################################################################################

.DEFAULT_GOAL := help

define PRINT_HELP_PYSCRIPT
import re, sys; \
lines = '\n'.join([line for line in sys.stdin]); \
matches = re.findall(r'\n## (.*)\n[\s\S]+?\n([a-zA-Z_-]+):', lines); \
print('Available rules:\n'); \
print('\n'.join(['{:25}{}'.format(*reversed(match)) for match in matches]))
endef
export PRINT_HELP_PYSCRIPT

help:
	@$(PYTHON_INTERPRETER) -c "${PRINT_HELP_PYSCRIPT}" < $(MAKEFILE_LIST)
