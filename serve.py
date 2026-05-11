import http.server
import socketserver
from pathlib import Path

f = Path(__file__).with_name('index.html')

class H(http.server.BaseHTTPRequestHandler):
    def do_GET(self):
        d = f.read_bytes()
        self.send_response(200)
        self.send_header('Content-Type', 'text/html;charset=utf-8')
        self.send_header('Content-Length', len(d))
        self.end_headers()
        self.wfile.write(d)
    def log_message(self, *a):
        pass

socketserver.TCPServer(('127.0.0.1', 8080), H).serve_forever()
