#pull the latest python image into your image
#copy your requirements file from where-ever it's located to a directory called /app
#pip install the requirements.txt file
#specify a port to listen on- this should match the port you've set in your py file.
#copy everything in the current directory to the app directory
#configure the docker container to run as a python executable.
#run your py file by providing the py file as the container's default.
FROM python:3
COPY requirements.txt  /app/
RUN pip freeze > requirements.txt
RUN pip install -r requirements.txt
EXPOSE 10000
COPY . appw
CMD [ "python", "-m" , "flask", "run", "--host==127.0.0.1:10000" ]
ENTRYPOINT [ "handleRequests.py" ]

#programming-Assignment-4-SETH-LOPEZ