# Application Refactoring

## Objective

Refactor the application by separating the Express application from the HTTP server to improve maintainability and enable automated testing.

---

## Background

Initially, `app.js` performed two responsibilities:

1. Creating the Express application.
2. Starting the HTTP server.

Although functional, this structure made automated testing more difficult because importing the application also started the server.

---

## Architecture Before Refactoring

```text
app.js
│
├── Create Express application
├── Register routes
├── Register Prometheus metrics
└── Start HTTP server
```

---

## Refactoring

### Update `app.js`

Replace:

```javascript
app.listen(3000, () => console.log('Listening on port 3000'));
```

with:

```javascript
module.exports = app;
```

---

### Create `server.js`

```javascript
const app = require('./app');

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
    console.log(`Listening on port ${PORT}`);
});
```

The responsibilities are now separated:

- **app.js**
  - Create the Express application
  - Register application routes
  - Configure Prometheus metrics
  - Export the application

- **server.js**
  - Start the HTTP server

---

## Verify the Refactoring

Start the application.

```bash
node server.js
```

Expected output:

```text
Listening on port 3000
```

Verify the application endpoints:

| Endpoint | Expected Result |
|----------|-----------------|
| `/` | Application Home Page |
| `/health` | `ok` |
| `/metrics` | Prometheus metrics |

The application's behavior remained unchanged after the refactoring.

---

## Second Commit

```bash
git add .
git commit -m "Refactor Express application for testability"
```

---

## Outcome

The application was successfully refactored without changing its functionality.

Separating the application from the server startup follows standard Express.js project structure and prepares the project for automated unit testing using Jest and Supertest.