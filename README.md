## Note
Needed storm files are in: 
```
smb://madnas01/corporate/SDC/proyectos/LOGIQ/apache-storm/apache-storm-1.0.1.tar.gz
```

# Apache Storm images for Docker

# Build

* ```docker build -t <name>/storm-base base```
* ```docker build -t <name>/storm-nimbus nimbus```
* ```docker build -t <name>/storm-worker worker```
* ```docker build -t <name>/storm-ui ui```
