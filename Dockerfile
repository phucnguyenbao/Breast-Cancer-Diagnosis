# Use Python  
FROM python:3.11-slim

# Working directory in container
WORKDIR /app

# Install basic packages for building libraries
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Copy requirement package file first
COPY requirements.txt .

# Install Python libraries(requirement.txt)
RUN pip install --no-cache-dir -r requirements.txt

# Copy entire project into container
COPY . .

# Expose port for Jupyter
EXPOSE 8888

# Run Jupyter Notebook when container starts
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token="]