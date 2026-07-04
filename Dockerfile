FROM python:3.9-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 23231

CMD ["streamlit", "run", "web.py", "--server.port", "23231", "--server.maxUploadSize=500", "--server.address", "0.0.0.0"]
