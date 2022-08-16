FROM python:3.7.3-stretch

## Step 1:
# Create a working directory

## Step 2:
# Copy source code to working directory

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013

## Step 4:
# Expose port 80

## Step 5:
# Run app.py at container launch
FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY . app.py /app/

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
# COPY requirements.txt /app/
RUN pip install --no-cache-dir --upgrade pip==19.1.1 && pip install --no-cache-dir -r requirements.txt

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]
