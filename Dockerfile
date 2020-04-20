#Image from Docker registry
FROM python

#In the image, create a directory named app.
RUN mkdir /app

#Set the working directory.
WORKDIR /app

# Basic copy from current dir to the ---> /app/
ADD . /app/

#Run the pip installer to pull the requirements into the image.
RUN pip install -r /app/requirements.txt

# Expose docker container '5000'
EXPOSE 5000

# First command when container is start
CMD ["python", "/app/app.py"]
