- Esta aplicação serve como projeto para que possamos fazer monitoramento de alguma aplicação no caso esta, feita em Node.

> Comando para rodar aplicação em JavaScript
  ```javascript
  node .\index.js
  ```
> Comando para subir container do Docker com Prometheus
  ```docker
  docker run
    --name prometheus
    --rm 
    -d
    -p 9090:9090
    -v /home/rodrigues/Desktop/learning/devops/monitoring/prometheus/prometheus.yml:/etc/prometheus/prometheus.yml
    prom/prometheus
  ```