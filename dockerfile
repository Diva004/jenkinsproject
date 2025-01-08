FROM python:latest
RUN apt update 
RUN pip install boto3
RUN pip install requests
WORKDIR /var/myapp
COPY miniprojects3.py /var/myapp/miniprojects3.py
CMD ["sh", "-c", "python /var/myapp/miniprojects3.py"]