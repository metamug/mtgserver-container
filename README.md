# mtgserver-container
Containerization POC for mtgserver

### Build
docker build -t mtgserver:1.5.6 . 

### Run
docker run -d -p 7000:7000 mtgserver:1.5.6