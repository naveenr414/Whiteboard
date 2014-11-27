mousePos = (evt)->
	box = document.getElementById("board").getBoundingClientRect()
	[evt.clientX-box.left,-1*(evt.clientY-box.right)]

canvas = $ -> $("#board")
textLocation = $ -> $("#pos")
document.getElementById("board").addEventListener("mousemove",(evt)->
	console.log "#{mousePos(evt)[0]} #{mousePos(evt)[1]}")

