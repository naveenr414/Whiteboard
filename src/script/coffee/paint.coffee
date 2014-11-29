#Canvas
canvas = document.getElementById("board")

#Bounding Rectangle of the Canvas
box = canvas.getBoundingClientRect()
width = canvas.width
height = canvas.height

#Drawing Context of the Canvas
context = canvas.getContext("2d")

#Detect Mouse Clicks
mousePos = (evt)->
	[evt.clientX-box.left,-1*(evt.clientY-box.right)]


#Create a random picture in the canvas
imageData = context.createImageData(width,height)

for i in [0..imageData.data.length]
	imageData.data[i] =  Math.floor((Math.random() * 120))

context.putImageData(imageData,0,0)

#On Mouse Move
document.getElementById("board").addEventListener("mousemove",(evt)->

	#Create another random picture
	for i in [0..imageData.data.length]
		imageData.data[i] = 255
		imageData.data[i] =  Math.floor((Math.random() * 120)) if i%4!= 3

	context.putImageData(imageData,0,0)
)

