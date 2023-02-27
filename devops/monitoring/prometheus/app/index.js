var express = require('express');
var promClient = require('prom-client');
const register = promClient.register;

var app = express();

const client = require('prom-client');

const counter = new client.Counter({
    name: 'application_request_total',
    help: 'Contador de requests',
    labelNames: ['statusCode']
})

const gauge = new promClient.Gauge({
    name: 'application_free_bytes_total',
    help: 'Exemplo de gauge'
});

const histogram = new promClient.Histogram({
    name: 'application_request_time_seconds',
    help: 'Tempo de resposta da API',
    buckets: [0.1, 0.2, 0.3, 0.4, 0.5]
});

const summary = new promClient.Summary({
    name: 'application_summary_request_time_seconds',
    help: 'Exemplo de Summary',
    percentiles: [0.5, 0.9, 0.99]
});

app.get('/', function(req, res) {
    counter.labels('200').inc();    
    gauge.set(100 * Math.random());
    const time = Math.random();
    histogram.observe(time)
    summary.observe(time)

    res.send('Subindo aplicação para o promClientetheus!');
});

app.get('/metrics', async(req, res) => {
    res.set('Content-Type', register.contentType)
    res.end(await register.metrics())
  })

app.listen(3000);