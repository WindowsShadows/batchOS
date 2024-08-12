This is a version of Shade Engine, a 3D engine made in Batch. This was not made by the batchOS devs, only implemented into batchOS.
All credit goes to Berry2460.
Original source code repository: https://github.com/Berry2460/shade_engine

Shade Engine commands:

IMPORTRANT to use this in source code: setlocal enabledelayedexpansion

m(x)m(y) = map coordinate block (use wall numbers or n for air)
x(x)x(y) = screen coordinates (used for models)
cx = camera x
cy = camera y
turn = camera turn angle 1-4 NESW
render = max render distance 2-7 default 5
floor = floor texture
sky = sky texture
wmax = wall maximum
w(number)f = wall (number) face texture
w(number)s = wall (number) side texture
model = the name of your model file to be drawn on screen (.bat extension is automatically added)

example of a model:
set model=crosshair

Contents of "crosshair.bat":
set x8x8=/\

textures are two characters wide, ex:(##, ==, *-, @#, @@)

screen dimensions are 16x16
