# Breast Cancer Diagnosis – ML Pipeline

This project builds a machine learning pipeline to classify breast cancer tumors 
(Benign vs Malignant) using the Wisconsin Breast Cancer dataset.

The workflow includes data preprocessing, model training, evaluation, experiment tracking, 
and automated execution through a CI/CD pipeline.

## Technology Stack
**Language**
- Python 3

**Machine Learning**
- scikit-learn
- Random Forest
- Gradient Boosting

**Data Processing & Visualization**
- pandas
- numpy
- matplotlib
- seaborn

**MLOps & DevOps**
- GitHub Actions (CI/CD pipeline)
- Docker (containerized environment)
- MLflow (experiment tracking)
- Jupyter Notebook

## Project structure:
```bash
BTL_ML/
├─ BTL_ML.ipynb
├─ README.md
├─ .gitignore
├─ requirements.txt
├─ docker-compose.yml
├── .github/workflows/
│ └── ml-pipeline.yml # CI/CD workflow
└─ Dockerfile
```
## Architecture

Notebook workflow:

1. **Data Loading & Preprocessing**  
   Load the breast cancer dataset, handle missing values, encode features,
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

5. **Experiment Tracking with MLflow**  
   Machine learning experiments are tracked using MLflow, allowing logging of model parameters, evaluation metrics, and results.  
   This enables easier comparison between different model configurations and improves reproducibility of experiments.

## Prerequisites

To run this project locally, you need:

- Docker installed on your system

Install **Docker Desktop** (Windows/macOS):  
https://www.docker.com/products/docker-desktop/

Or install **Docker Engine** on Linux.

---

# Instructions

## 1. Clone the repository

```bash
git clone https://github.com/phucnguyenbao/Breast-Cancer-Diagnosis.git
cd Breast-Cancer-Diagnosis
```
### 2. Run with Docker
#### 2.1 Build and Start Services

In the project folder (where `docker-compose.yml` is located), run:

```bash
docker compose up --build
```
This command will:

Build the Docker image for the Jupyter environment

Start both Jupyter Notebook and MLflow services

Automatically connect the services through the Docker network

#### 2.2 Open the notebook
Once the container is running, open your browser and go to:
http://localhost:8888 

Then open BTL_ML.ipynb to run the notebook.

#### 2.3 View MLflow Experiments
If MLflow logging is enabled, you can view experiment results by opening your browser and go to:
http://localhost:5000

This interface allows you to view logged parameters, metrics, and compare different experiment runs.
