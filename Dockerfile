# Step 1: Use the official Python image from Docker Hub
FROM python:3.12-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the requirements.txt file
COPY requirements.txt .

# Step 4: Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy the application code into the container
COPY . .

# Step 6: Set environment variables (if necessary)
# ENV FLASK_ENV=production

# Step 7: Expose the port the app runs on
EXPOSE 5000

# Step 8: Define the command to run your app
CMD ["python", "app.py"]
