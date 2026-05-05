const request = require('supertest');
const app = require('../index');

test('GET / returns message', async () => {
  const res = await request(app).get('/');
  expect(res.text).toBe("Hello from GitHub Actions!");
});