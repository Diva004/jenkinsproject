FROM python:latest
RUN apt update 
RUN pip install boto3
RUN pip install requests
WORKDIR /var/myapp
COPY minipros3.py /var/myapp/minipros3.py
CMD ["sh", "-c", "python /var/myapp/minipros3.py"]
