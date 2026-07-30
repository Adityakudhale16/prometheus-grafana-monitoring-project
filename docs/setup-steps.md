# Setup Steps

## Step 1: Update Ubuntu

```bash
sudo apt update
sudo apt upgrade -y
```

## Step 2: Download Prometheus

```bash
wget https://github.com/prometheus/prometheus/releases/download/v3.10.0/prometheus-3.10.0.linux-amd64.tar.gz
tar -xvf prometheus-3.10.0.linux-amd64.tar.gz
cd prometheus-3.10.0.linux-amd64
```

## Step 3: Configure Prometheus

Edit the configuration file:

```bash
nano prometheus.yml
```

Start Prometheus:

```bash
./prometheus --config.file=prometheus.yml
```

## Step 4: Install Node Exporter

```bash
wget https://github.com/prometheus/node_exporter/releases/download/v1.9.1/node_exporter-1.9.1.linux-amd64.tar.gz
tar -xvf node_exporter-1.9.1.linux-amd64.tar.gz
cd node_exporter-1.9.1.linux-amd64
./node_exporter
```

## Step 5: Install Grafana

```bash
sudo apt update
sudo apt install -y grafana
sudo systemctl enable grafana-server
sudo systemctl start grafana-server
```

## Step 6: Configure Grafana

- Open `http://<server-ip>:3000`
- Login with the default credentials.
- Add Prometheus as a Data Source.
- Import the Node Exporter dashboard.

## Step 7: CPU Stress Test

```bash
chmod +x cpu_stress.sh
./cpu_stress.sh
```

## Step 8: Verify Monitoring

- Prometheus: `http://<server-ip>:9090`
- Grafana: `http://<server-ip>:3000`
- Node Exporter: `http://<server-ip>:9100/metrics`
