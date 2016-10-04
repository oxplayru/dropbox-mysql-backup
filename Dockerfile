FROM python:2.7.12-alpine
RUN apk update
RUN apk add mysql-client
RUN pip install dropbox
RUN pip install hurry.filesize
ADD . /opt/mysql-backup/
CMD ["/opt/mysql-backup/backup-mysql.py"]