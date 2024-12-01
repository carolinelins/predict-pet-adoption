# predict-pet-adoption

<a target="_blank" href="https://cookiecutter-data-science.drivendata.org/">
    <img src="https://img.shields.io/badge/CCDS-Project%20template-328F97?logo=cookiecutter" />
</a>

Final project for **Techniques d'Apprentissage Artificiel**

## Prerequisites

Before running the project, make sure you have the following installed:

- **Conda**: Used to manage the project's virtual environment and dependencies.
- **Git**: To clone the repository.
- **Make**: To execute tasks defined in the `Makefile`.
- **Jupyter Notebook**: To run the notebooks.

## Setup

Follow these steps to set up the project:

1. **Clone the repository**:

   ```bash
   git clone https://github.com/yourusername/predict-pet-adoption.git
   cd predict-pet-adoption
   ```

2. **Create and activate the Conda environment**:

   You need to create a Conda environment and install all necessary dependencies. Run the following command to create the environment:

   ```bash
   make create-environment
   ```

   This command will create a new environment with Python 3.10. Once the environment is created, activate it using:

   ```bash
   conda activate predict-pet-adoption
   ```

3. **Install dependencies**:

   After activating the environment, install all the required dependencies using:

   ```bash
   make requirements
   ```

   This will install the necessary packages from the `environment.yml` file.

4. **Run the Notebooks**:

   To run the Jupyter notebooks for the data exploration, transformation, and model training steps, run:

   ```bash
   make run-notebooks
   ```

   This will execute the following notebooks in order:
   - `1-data-exploration.ipynb` (Data Exploration)
   - `2-data-transformation.ipynb` (Data Preprocessing and Feature Engineering)
   - `3-model-training.ipynb` (Training the Models and Evaluating Performance)

## Project Organization

```
├── LICENSE            <- Open-source license if one is chosen
├── Makefile           <- Makefile with convenience commands like `make data` or `make train`
├── README.md          <- The top-level README for developers using this project.
├── data
│   ├── processed      <- The final, canonical data sets for modeling.
│   └── raw            <- The original, immutable data dump.
│
├── docs               <- A default mkdocs project; see www.mkdocs.org for details
│
├── notebooks          <- Jupyter notebooks. Naming convention is a number (for ordering),
│                         the creator's initials, and a short `-` delimited description, e.g.
│                         `1.0-jqp-initial-data-exploration`.
│
├── pyproject.toml     <- Project configuration file with package metadata for 
│                         predict-pet-adoption and configuration for tools like black
│
├── environment.yml    <- The Conda configuration file for recreating the analysis environment.
│                         Use the command `conda env create -f environment.yml` to install all necessary dependencies.
│
└── setup.cfg          <- Configuration file for flake8
```

## Troubleshooting

If you encounter any issues during setup or execution, here are some common troubleshooting steps:

- **Environment Issues:** Ensure you activated the correct Conda environment using `conda activate predict-pet-adoption`.
- **Package Installation:** If there were any issues installing dependencies, try running `make clean` and then `make requirements` again to reinstall the dependencies.

---