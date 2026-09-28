import puppeteer from 'puppeteer';
import { resolve } from 'path';
import { pathToFileURL } from 'url';

const proposals = [
  { file: 'ui_new_proposal_A.html', out: 'ui_new_proposal_A.png' },
  { file: 'ui_new_proposal_B.html', out: 'ui_new_proposal_B.png' },
];

const browser = await puppeteer.launch({ headless: true, args: ['--no-sandbox'] });
const page = await browser.newPage();
await page.setViewport({ width: 600, height: 900, deviceScaleFactor: 2 });

for (const { file, out } of proposals) {
  const url = pathToFileURL(resolve('C:/Users/User/Documents/toeic_vocab', file)).href;
  await page.goto(url, { waitUntil: 'networkidle0' });
  await page.screenshot({ path: `C:/Users/User/Documents/toeic_vocab/${out}`, fullPage: false });
  console.log('saved', out);
}

await browser.close();
