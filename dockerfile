FROM python:3.12-slim

WORKDIR /app

COPY . .

RUN if [ -s requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; fi

CMD ["python", "app.py"]
