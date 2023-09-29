FROM python:3.10-bookworm

COPY ./app /app/app
COPY install.sh /app/app
COPY requirements.txt /app/app


WORKDIR /app/app


RUN pip install -r requirements.txt
RUN chmod +x dscore-ovl/scorelib/md-eval-22.pl


CMD [ "python","main.py" ]




