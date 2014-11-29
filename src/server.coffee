#Server
 
express = require('express')
path = require("path")
app = express()
http = require('http').Server(app)
io = require("socket.io")(http)


app.use(express.static(path.join("#{__dirname}/css")))
app.use(express.static(path.join("#{__dirname}/script/js")))
app.use(express.static(path.join("#{__dirname}/node_modules/socket.io/lib")))

app.get('/', (req, res)->
  res.sendFile("#{__dirname}/index.html")
)

io.on("connection",(socket)->
	console.log "Another user has connected"
)


http.listen(3000,()->
	console.log "Listening on port 3000"
)