FROM python:3.8-alpine

# switch working directory
WORKDIR /app

# copy the requirements file into the image
COPY . .

# install the dependencies and packages in the requirements file
RUN pip install -r requirements.txt

# port to run python
EXPOSE 5000

# configure the container to run in an executed manner
CMD ["python","app.py" ]
