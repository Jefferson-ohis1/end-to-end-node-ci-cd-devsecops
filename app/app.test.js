const request = require('supertest');
const app = require('./app');

describe('Node.js Monitoring App', () => {

    test('GET / should return HTTP 200', async () => {
        const response = await request(app).get('/');

        expect(response.statusCode).toBe(200);
        expect(response.text).toContain('DevOps Monitoring App');
    });

    test('GET /health should return 200 and "ok"', async () => {
        const response = await request(app).get('/health');

        expect(response.statusCode).toBe(200);
        expect(response.text).toBe('ok');
    });

    test('GET /metrics should return Prometheus metrics', async () => {
        const response = await request(app).get('/metrics');

        expect(response.statusCode).toBe(200);
        expect(response.headers['content-type']).toContain('text/plain');
        expect(response.text).toContain('process_cpu_user_seconds_total');
    });

});