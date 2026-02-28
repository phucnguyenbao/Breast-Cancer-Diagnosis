# Breast Cancer Classification – ML Notebook

This project contains a Jupyter Notebook (`BTL_ML.ipynb`) that builds and evaluates
machine learning models for a binary classification problem (benign vs. malignant tumors).  
It includes data preprocessing, baseline models, hyperparameter tuning, and
visual evaluation (confusion matrix, ROC/PR curves, KS statistic, etc.).

## Technology Stack
- Language: **Python 3**
- Environment: **Jupyter Notebook / JupyterLab**
- Machine Learning: **scikit-learn** (Gradient Boosting, Random Forest)
- Data & Plotting: **pandas**, **numpy**, **matplotlib**, **seaborn**
- Containerization: **Docker** (for reproducible setup)

## Project structure:
```bash
BTL_ML/
├─ BTL_ML.ipynb
├─ README.md
├─ .gitignore
├─ requirements.txt
└─ Dockerfile
```
## Architecture

Notebook workflow:

1. **Data Loading & Preprocessing**  
   Load the breast cancer dataset, handle missing values (if any), encode features,
   scale/standardize data, and split into train/test sets.

2. **Baseline Models**  
   Train baseline classifiers (e.g., Logistic Regression, Decision Tree,
   Random Forest) using default hyperparameters to obtain reference performance.

3. **Model Tuning**  
   Use `GridSearchCV` (and/or similar methods) to tune key hyperparameters for
   ensemble models, especially Gradient Boosting, to improve F1/AUC.

4. **Model Evaluation**  
   Compute evaluation metrics (Accuracy, Precision, Recall, F1, AUC, KS),
   compare Baseline vs Tuned models, and visualize results via confusion matrix,
   ROC curves, and Precision–Recall curves.

5. **Reproducible Environment with Docker**  
   A `Dockerfile` and `requirements.txt` are provided so the notebook can be run
   in an isolated container without manually installing dependencies.

## Prerequisites

You can run the notebook using **Docker (recommended)** 


Install [Docker Desktop](https://www.docker.com/products/docker-desktop/) (Windows/macOS)  
   or Docker Engine on Linux.

## Instructions

### 1. Clone or download the project

```bash
cd path/to/your/projects
# if using git
git clone <this-repo-url>
cd BTL_ML
```
### 2. Run with Docker
#### 2.1 Build image
In the folder containing Dockerfile and BTL_ML.ipynb:
```bash
docker build -t btl-ml .
```
#### 2.2 Run container
Windows – PowerShell:
```bash
docker run -it --rm -p 8888:8888 -v "${PWD}:/app" btl-ml
```
Windows – Command Prompt (cmd.exe):
```bash
docker run -it --rm -p 8888:8888 -v %cd%:/app btl-ml
```
Linux / macOS:
```bash
docker run -it --rm -p 8888:8888 -v "$(pwd):/app" btl-ml
```
This will:
Map container port 8888 to localhost:8888 on your machine.


Mount the current directory into /app inside the container.
#### 2.3 Open the notebook
Once the container is running, open your browser and go to:
http://localhost:8888 

Then open BTL_ML.ipynb to run the notebook.