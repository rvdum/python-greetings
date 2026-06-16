FROM python:3-alpine
LABEL AUTHOR="Radu Dumitrascu" DESC="Docker image for Junior course task"

WORKDIR /app
COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 3000

ENTRYPOINT ["python", "app.py"]