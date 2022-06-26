docker build -t ssrf .
docker run -itd -p 8000:5000 --name=ssrf-test ssrf