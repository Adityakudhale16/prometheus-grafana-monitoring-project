# Prometheus Node Exporter Monitoring using Grafana

## Project Overview

This project monitors Linux system metrics using Prometheus, Node Exporter, and Grafana.

## Technologies Used

- Prometheus
- Grafana
- Node Exporter
- Ubuntu Linux

## Installation

### Step 1: Download Prometheus

```bash
wget https://github.com/prometheus/prometheus/releases/download/v3.10.0/prometheus-3.10.0.linux-amd64.tar.gz
tar -xvf prometheus-3.10.0.linux-amd64.tar.gz
cd prometheus-3.10.0.linux-amd64
```

### Step 2: Start Prometheus

```bash
./prometheus --config.file=prometheus.yml
```

### Step 3: Download Node Exporter

```bash
wget https://github.com/prometheus/node_exporter/releases/download/v1.9.1/node_exporter-1.9.1.linux-amd64.tar.gz
tar -xvf node_exporter-1.9.1.linux-amd64.tar.gz
cd node_exporter-1.9.1.linux-amd64
```

### Step 4: Start Node Exporter

```bash
./node_exporter
```

### Step 5: Install Grafana

```bash
sudo apt update
sudo apt install -y grafana
sudo systemctl enable grafana-server
sudo systemctl start grafana-server
```

### Step 6: Configure Prometheus

Edit `prometheus.yml` and add the Node Exporter target:

```yaml
scrape_configs:
  - job_name: "node_exporter"
    static_configs:
      - targets: ["localhost:9100"]
```

### Step 7: Open Services

- Prometheus: `http://localhost:9090`
- Grafana: `http://localhost:3000`
- Node Exporter Metrics: `http://localhost:9100/metrics`

## Project Files

- prometheus.yml
- stress.sh
- README.md

## Features

- CPU Monitoring
- Memory Monitoring
- Disk Monitoring
- Network Monitoring

## Author

Aditya Kudhale
