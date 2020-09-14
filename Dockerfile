FROM python:3.7.3-stretch

# Create a working directory
WORKDIR /app

# Copy source code to working directory
COPY . /app

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip3 install -r requirements.txt

# Expose port 80
EXPOSE 8080

# Run app.py at container launch
CMD ["python","app.py"]