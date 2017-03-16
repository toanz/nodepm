const http = require('http');

const server = http.createServer(function(req, res) {
  res.writeHead(200);
  res.end('hey');
}).listen(process.env.PORT || 3000, function() {
  console.log('App listening on port 3000');
});