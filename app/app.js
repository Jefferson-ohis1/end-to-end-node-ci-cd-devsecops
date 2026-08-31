const express = require('express');
const client = require('prom-client');
const helmet = require('helmet');
const path = require('path');

const app = express();

app.use(
  helmet({
    contentSecurityPolicy: {
      directives: {
        defaultSrc: ["'self'"],
        scriptSrc: ["'self'"],
        styleSrc: ["'self'"],
        imgSrc: ["'self'", "data:"],
        connectSrc: ["'self'"],
        fontSrc: ["'self'"],
        objectSrc: ["'none'"],
        baseUri: ["'self'"],
        frameAncestors: ["'none'"],
        formAction: ["'self'"],
      },
    },

    permissionsPolicy: {
      features: {
        geolocation: [],
        microphone: [],
        camera: [],
        payment: [],
        usb: [],
      },
    },

    crossOriginEmbedderPolicy: {
      policy: 'require-corp',
    },

    crossOriginOpenerPolicy: {
      policy: 'same-origin',
    },

    crossOriginResourcePolicy: {
      policy: 'same-origin',
    },
  })
);

// Prevent intermediary caching of application responses.
app.use((req, res, next) => {
  res.setHeader('Cache-Control', 'no-store');
  next();
});

// Explicit Permissions-Policy header.
app.use((req, res, next) => {
  res.setHeader(
    'Permissions-Policy',
    'geolocation=(), microphone=(), camera=(), payment=(), usb=()'
  );
  next();
});

// Serve static application assets.
app.use(express.static(path.join(__dirname, 'public')));

// Collect default system metrics.
client.collectDefaultMetrics();

// Custom counter.
const counter = new client.Counter({
  name: 'http_requests_total',
  help: 'Total number of HTTP requests',
});

// Home route.
app.get('/', (req, res) => {
  counter.inc();

  res.send(`
    <!DOCTYPE html>
    <html>
    <head>
      <title>DevOps Monitoring App</title>
      <link rel="stylesheet" href="/styles.css">
    </head>
    <body>
      <div class="card">
        <h1>🚀 DevOps Monitoring App</h1>
        <p>This Node.js app exposes Prometheus metrics.</p>
        <span class="badge">STATUS: RUNNING</span>

        <div class="links">
          <a href="/health">Health</a>
          <a href="/metrics">Metrics</a>
        </div>
      </div>
    </body>
    </html>
  `);
});

// Health check.
app.get('/health', (req, res) => res.send('ok'));

// Prometheus metrics.
app.get('/metrics', async (req, res) => {
  res.set('Content-Type', client.register.contentType);
  res.end(await client.register.metrics());
});

// Explicit 404 handler using the application's security policy.
app.use((req, res) => {
  res.status(404).send(`
    <!DOCTYPE html>
    <html lang="en">
    <head>
      <meta charset="utf-8">
      <title>Not Found</title>
    </head>
    <body>
      <h1>404 - Not Found</h1>
      <p>The requested resource was not found.</p>
    </body>
    </html>
  `);
});

module.exports = app;
