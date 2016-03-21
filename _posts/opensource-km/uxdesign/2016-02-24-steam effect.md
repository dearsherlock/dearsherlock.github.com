
蒸汽效果的Framer

 You can do this with <canvas>, which sounds harder than it is—and it's practically done how Ola Laurin did it in flash:

http://cloud.eckert.io/0z0u1R3N1z2F
All done in less than 80 lines of code

1) Two images ontop of each other, one clear and one blurry one (I used unsplash.it to request the the image twice, with blur effect)
2) One image placed in a regular framer layer
3) the blurry image gets rendered into a <canvas> (line 40, canvas.context.drawImage)
4) Draw thick brushes onto the canvas (context.moveTo, lineTo and stroke())
5) the only tricky part is knowing where to draw, but the new gesture events for onPan tell you exactly where your pointer is (you just get touch events a bit differently on a phone)
6) The magic is: the drawing is made in any color and then a composition mode is set that cuts out everything you draw on. Comment line 79 to see the actual drawing that acts as the mask.

This allows you do draw with different brushes, custom strokes and even a smudgy, soft brush (using shadows)