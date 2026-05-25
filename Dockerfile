FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV PORT=8000
ENV DOCUMENT360_BASE_URL=https://apihub.document360.io

EXPOSE 8000

CMD ["python", "server.py"]
