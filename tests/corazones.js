// Corazones flotantes: los «me gusta» de TikTok (aquí, los del botón «Probar») suben por el panel; con el interruptor apagado, no.
const { chromium } = require('playwright'); const assert = require('assert');
const U = 'http://localhost:8787';
(async () => {
  const b = await chromium.launch({ executablePath: process.env.CHROMIUM || undefined });
  const p = await b.newPage({ viewport: { width: 400, height: 720 } });
  const errs = []; p.on('pageerror', e => errs.push(e.message));
  await p.goto(U + '/'); await p.waitForTimeout(600);
  await p.evaluate(U => fetch(U + '/test', { method: 'POST' }), U); await p.waitForTimeout(2000);
  const con = await p.$$eval('#floaty > *', l => l.length);
  assert.ok(con > 0, 'no ha subido ningún corazón');
  await p.waitForTimeout(6000); // que acaben las pruebas
  await p.evaluate(async U => { const c = await (await fetch(U + '/config')).json(); c.events.float = false; await fetch(U + '/config', { method: 'POST', body: JSON.stringify(c) }); }, U);
  await p.reload(); await p.waitForTimeout(800); // página limpia, sin corazones de antes
  await p.evaluate(U => fetch(U + '/test', { method: 'POST' }), U); await p.waitForTimeout(2000);
  const sin = await p.$$eval('#floaty > *', l => l.length);
  assert.strictEqual(sin, 0, 'con el interruptor apagado no deben salir corazones');
  await p.evaluate(async U => { const c = await (await fetch(U + '/config')).json(); c.events.float = true; await fetch(U + '/config', { method: 'POST', body: JSON.stringify(c) }); }, U);
  console.log({ con, sin, errores: errs }); assert.strictEqual(errs.length, 0);
  await b.close();
})().catch(e => { console.error('FALLO', e.message); process.exit(1); });
