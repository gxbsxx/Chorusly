// Chat primero: de serie, eventos y sala compactos y el chat con más de la mitad del panel; al pulsar el título se despliegan y se recuerda.
const { chromium } = require('playwright'); const assert = require('assert');
(async () => {
  const b = await chromium.launch({ executablePath: process.env.CHROMIUM || undefined });
  const p = await b.newPage({ viewport: { width: 360, height: 800 } });
  const errs = []; p.on('pageerror', e => errs.push(e.message));
  await p.goto('http://localhost:8787/'); await p.waitForTimeout(600);
  const noAlert = () => p.addStyleTag({ content: '#alert{display:none!important}' }); // el aviso de prueba de otras pruebas puede llegar en cualquier momento
  await noAlert();
  const h = () => p.evaluate(() => ({ chat: chat.offsetHeight, evOpen: evbox.classList.contains('open'), roomOpen: roombox.classList.contains('open') }));
  let s = await h();
  assert.ok(!s.evOpen && !s.roomOpen, 'de serie deben estar compactos');
  assert.ok(s.chat > 400, 'el chat debe tener más de la mitad del alto: ' + s.chat);
  await p.click('#evHead'); await p.reload(); await p.waitForTimeout(600); await noAlert();
  s = await h(); assert.ok(s.evOpen && !s.roomOpen, 'debe recordar que los eventos están desplegados');
  await p.click('#evHead'); s = await h(); assert.ok(!s.evOpen);
  console.log({ chat: s.chat, errores: errs }); assert.strictEqual(errs.length, 0);
  await b.close();
})().catch(e => { console.error('FALLO', e.message); process.exit(1); });
