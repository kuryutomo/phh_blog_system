'use strict';
const http = require ('http');
const pug = require ('pug');
const mysql = require ('promise-mysql');

const DB_NAME = 'phh_blog_system';
const DB_USER = process.env['PHH_DB_USER'] || 'root';
const DB_PASSWD = process.env['PHH_DB_PASSWD'] || '';

const server = http.createServer ((req, res) => {
  res.writeHead (200, {
    'Content-Type': 'text/html; charset=utf-8'
  });

  switch (req.method) {
  case 'GET':
    if (req.url === '/') {
      getTopPage (req, res);
    }
    break;
  case 'POST':
    res.end ();
    break;
  default:
    break;
  }
}).on('error', (e) => {
  console.error ('[' + new Date() + '] Server Error', e);
}).on('clientError', (e) => {
  console.error ('[' + new Date() + '] Client Error', e);
});

const port = 8000;
server.listen (port, () => {
  console.info ('[' + new Date() + '] Listening on ' + port);
});

function getTopPage (req, res) {
  res.write(pug.renderFile('./top.pug', {}));
  res.end ();
}
