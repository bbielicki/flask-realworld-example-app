FROM python:3.6

WORKDIR /usr/src/app

COPY . .
RUN pip install --no-cache-dir -r requirements/prod.txt

ENV FLASK_APP=autoapp.py

# Expose the application's port
EXPOSE 5000

ENTRYPOINT /usr/src/app/start.sh
