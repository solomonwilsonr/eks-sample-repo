const http = require('http');
const port = process.env.PORT || 3000;
const msg = process.env.MESSAGE || 'Auto-deployed via CodePipeline!';
http.createServer((req, res) => {
  res.writeHead(200, {'Content-Type':'text/plain'});
  res.end(`${msg}\n`);
}).listen(port, () => console.log(`Listening on ${port}`));
