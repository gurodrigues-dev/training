docker run
    --name prometheus
    --rm # Lembrando que estou usando esta flag para toda vez que o container for parado, seja excluído.
    -d
    -p 9090:9090
    -v /home/rodrigues/Desktop/learning/devops/monitoring/prometheus/prometheus.yml:/etc/prometheus/prometheus.yml
    prom/prometheus