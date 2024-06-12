FROM public.ecr.aws/docker/library/python:3.7-slim
WORKDIR /app
COPY source/ .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8080
ENTRYPOINT ["waitress-serve", "--host=0.0.0.0", "--port=8080", "app:app"]
