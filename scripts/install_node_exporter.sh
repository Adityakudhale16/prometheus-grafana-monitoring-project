#!/bin/bash

# Download Node Exporter
wget https://github.com/prometheus/node_exporter/releases/download/v1.9.1/node_exporter-1.9.1.linux-amd64.tar.gz

# Extract
tar -xvf node_exporter-1.9.1.linux-amd64.tar.gz

# Go to directory
cd node_exporter-1.9.1.linux-amd64

# Start Node Exporter
./node_exporter
