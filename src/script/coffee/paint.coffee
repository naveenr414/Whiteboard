
#Canvas
canvas = document.getElementById("board")

#Bounding Rectangle of the Canvas
box = canvas.getBoundingClientRect()

#Actual Canvas

mousePos = (evt)->
	[evt.clientX-box.left,-1*(evt.clientY-box.right)]



width = canvas.width
height = canvas.height
context = canvas.getContext("2d")
imageData = context.createImageData(width,height)

for i in [0..imageData.data.length]
	imageData.data[i] =  Math.floor((Math.random() * 120))

context.putImageData(imageData,0,0)

document.getElementById("board").addEventListener("mousemove",(evt)->
	for i in [0..imageData.data.length]
		imageData.data[i] = 255
		imageData.data[i] =  Math.floor((Math.random() * 120)) if i%4!= 3

	context.putImageData(imageData,0,0)
)

