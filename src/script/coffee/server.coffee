#Server
 
express = require('express')
path = require("path")
http = require('http')

app = express()
server = http.createServer(app)

app.use(express.static(path.join("#{__dirname}/css")))
app.use(express.static(path.join("#{__dirname}/script/js")))

app.get('/', (req, res)->
  res.sendFile("C:/Users/Janakiraman/Documents/Whiteboard/src/index.html")
);

http.listen(3000, ()->
  console.log 'listening on *:3000' 
);
