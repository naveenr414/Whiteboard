#Server
 
express = require('express')
path = require("path")
http = require('http')

app = express()
server = http.createServer(app)

app.use(express.static(path.join("#{__dirname}/css")))
app.use(express.static(path.join("#{__dirname}/script/js")))

app.get('/', (req, res)->
  res.sendFile("#{__dirname}/index.html")
);

app.listen 3000 