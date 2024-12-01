# predict-pet-adoption

<a target="_blank" href="https://cookiecutter-data-science.drivendata.org/">
    <img src="https://img.shields.io/badge/CCDS-Project%20template-328F97?logo=cookiecutter" />
</a>

Final project for **Techniques d'Apprentissage Artificiel**

## English

### Prerequisites

Before running the project, ensure you have the following installed:

- **Conda**: Used to manage the project's virtual environment and dependencies.
- **Git**: To clone the repository.
- **Make**: To execute tasks defined in the `Makefile`.
- **Jupyter Notebook**: To run the notebooks.

### Setup

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

   Once the environment is created, activate it using:
   ```bash
   conda activate predict-pet-adoption
   ```

3. **Install dependencies**:
   After activating the environment, install all the required dependencies using:
   ```bash
   make requirements
   ```

4. **Run the Notebooks**:
   To run the Jupyter notebooks for data exploration, transformation, and model training, run:
   ```bash
   make run-notebooks
   ```

   This will execute the following notebooks in order:
   - `1-data-exploration.ipynb`
   - `2-data-transformation.ipynb`
   - `3-model-training.ipynb`

### Project Organization

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
├── notebooks          <- Jupyter notebooks.
│
├── pyproject.toml     <- Project configuration file for tools like black
│
├── environment.yml    <- The Conda configuration file for recreating the analysis environment.
│
└── setup.cfg          <- Configuration file for flake8
```

---

## Français

### Prérequis

Avant d'exécuter le projet, assurez-vous d'avoir installé les outils suivants :

- **Conda** : Utilisé pour gérer l'environnement virtuel et les dépendances du projet.
- **Git** : Pour cloner le dépôt.
- **Make** : Pour exécuter les tâches définies dans le `Makefile`.
- **Jupyter Notebook** : Pour exécuter les notebooks.

### Configuration

Suivez ces étapes pour configurer le projet :

1. **Clonez le dépôt** :
   ```bash
   git clone https://github.com/yourusername/predict-pet-adoption.git
   cd predict-pet-adoption
   ```

2. **Créez et activez l'environnement Conda** :
   Vous devez créer un environnement Conda et installer toutes les dépendances nécessaires. Exécutez la commande suivante pour créer l'environnement :
   ```bash
   make create-environment
   ```

   Une fois l'environnement créé, activez-le avec :
   ```bash
   conda activate predict-pet-adoption
   ```

3. **Installez les dépendances** :
   Après avoir activé l'environnement, installez toutes les dépendances nécessaires avec :
   ```bash
   make requirements
   ```

4. **Exécutez les Notebooks** :
   Pour exécuter les notebooks pour l'exploration des données, la transformation et l'entraînement des modèles, exécutez :
   ```bash
   make run-notebooks
   ```

   Cela exécutera les notebooks suivants dans cet ordre :
   - `1-data-exploration.ipynb`
   - `2-data-transformation.ipynb`
   - `3-model-training.ipynb`

### Organisation du Projet

```
├── LICENSE            <- Licence open-source, si choisie
├── Makefile           <- Makefile avec des commandes pratiques comme `make data` ou `make train`
├── README.md          <- Le README principal pour les développeurs utilisant ce projet.
├── data
│   ├── processed      <- Le jeu de données final pour la modélisation.
│   └── raw            <- Le jeu de données original et immuable.
│
├── docs               <- Un projet mkdocs par défaut ; consultez www.mkdocs.org pour plus de détails
│
├── notebooks          <- Notebooks Jupyter.
│
├── pyproject.toml     <- Fichier de configuration du projet pour des outils comme black
│
├── environment.yml    <- Fichier de configuration Conda pour recréer l'environnement d'analyse.
│
└── setup.cfg          <- Fichier de configuration pour flake8
```

---

## Português

### Pré-requisitos

Antes de executar o projeto, certifique-se de ter as seguintes ferramentas instaladas:

- **Conda**: Usado para gerenciar o ambiente virtual e as dependências do projeto.
- **Git**: Para clonar o repositório.
- **Make**: Para executar as tarefas definidas no `Makefile`.
- **Jupyter Notebook**: Para rodar os notebooks.

### Configuração

Siga os passos abaixo para configurar o projeto:

1. **Clone o repositório**:
   ```bash
   git clone https://github.com/yourusername/predict-pet-adoption.git
   cd predict-pet-adoption
   ```

2. **Crie e ative o ambiente Conda**:
   Você precisa criar um ambiente Conda e instalar todas as dependências necessárias. Execute o seguinte comando para criar o ambiente:
   ```bash
   make create-environment
   ```

   Após criar o ambiente, ative-o com:
   ```bash
   conda activate predict-pet-adoption
   ```

3. **Instale as dependências**:
   Após ativar o ambiente, instale todas as dependências necessárias usando:
   ```bash
   make requirements
   ```

4. **Execute os Notebooks**:
   Para rodar os notebooks de exploração de dados, transformação e treinamento de modelo, execute:
   ```bash
   make run-notebooks
   ```

   Isso executará os seguintes notebooks na ordem:
   - `1-data-exploration.ipynb`
   - `2-data-transformation.ipynb`
   - `3-model-training.ipynb`

### Estrutura do Projeto

```
├── LICENSE            <- Licença open-source, se houver
├── Makefile           <- Makefile com comandos como `make data` ou `make train`
├── README.md          <- O README principal para desenvolvedores utilizando este projeto.
├── data
│   ├── processed      <- O conjunto final de dados para modelagem.
│   └── raw            <- O conjunto de dados original imutável.
│
├── docs               <- Um projeto mkdocs por padrão; veja www.mkdocs.org para mais detalhes
│
├── notebooks          <- Notebooks Jupyter.
│
├── pyproject.toml     <- Arquivo de configuração do projeto para ferramentas como o black
│
├── environment.yml    <- O arquivo de configuração Conda para recriar o ambiente de análise.
│
└── setup.cfg          <- Arquivo de configuração para flake8
```