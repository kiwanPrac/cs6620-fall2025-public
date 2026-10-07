# use python version 3.11
FROM python:3.11-slim

# set the working directory inside the container
WORKDIR /app

# copy requirement file
COPY requirements.txt .

# install requirement 
RUN pip install --no-cache-dir -r requirements.txt

# copy all application files to container
COPY . .

# use 3000 port
EXPOSE 3000

# run the flask application
CMD ["python", "app.py"]