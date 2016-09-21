#
# ps7pr3.py (Problem Set 7, Problem 3)
#
# More image processing!
#
# Computer Science 111
#
# name: keyan vakil
# email: keyanv@bu.edu
# 
# This problem is an individual-only problem that you should complete
# on your own.
#

# IMPORTANT: This file is for your solutions to problem 3.
# Your solutions to problem 2 should go in ps7pr2.py instead.

from cs111png import *

def brightness(pixel):
    """ takes a pixel (an [R, G, B] list) and returns a value
        between 0 and 255 that represents the brightness of that pixel.
    """
    red = pixel[0]
    green = pixel[1]
    blue = pixel[2]
    return (21*red + 72*green + 7*blue) // 100
    
### PUT YOUR WORK FOR PROBLEM 3 BELOW. ###
def bw(filename, threshold):
    """ loads the PNG image file with the specified filename and creates a new image that is a black-and-white version of the original image. The second input to the function is an integer threshold between 0 and 255, and it should govern which pixels are turned white and which are turned black. If a pixel’s brightness is greater than the specified threshold, the pixel should be turned white ([255,255,255]); otherwise, the pixel should be turned black ([0,0,0])."""
    img = load_image(filename)
    
    for r in range(img.get_height()):
        for c in range(img.get_width()):
            # get the colors of the current pixel at row r, column c
            pixel = img.get_pixel(r, c)

            # change the pixel depending on its brightness
            if(brightness(pixel) > threshold):
                pixel = [255, 255, 255]
            else:
                pixel = [0, 0, 0]
                # set the changed pixel
            img.set_pixel(r, c, pixel)

    # save the modified image, using a filename that is based on the
    # name of the original file.
    new_filename = 'bw_' + filename
    img.save(new_filename)

def mirror_vert(filename):
    """loads the PNG image file with the specified filename and creates a new image in which the original image is “mirrored” vertically. In other words, the bottom half of the pixels in each column should be replaced by the reversed top half of the pixels from the same column."""
    img = load_image(filename)
    
    for r in range(img.get_height() // 2):
        for c in range(img.get_width()):
            # get the colors of the current pixel at row r, column c
            pixel = img.get_pixel(r, c)

            # set the pixel to a different position
            img.set_pixel(img.get_height() - r - 1, c, pixel)

    # save the modified image, using a filename that is based on the
    # name of the original file.
    new_filename = 'mirrorv_' + filename
    img.save(new_filename)

def extract(filename, rmin, rmax, cmin, cmax):
    """loads the PNG image file with the specified filename and extracts a portion of the original image that is specified by the other four parameters. The extracted portion of the image should consist of the pixels that fall in the intersection of
the rows of pixels that begin with row rmin and go up to but not including row rmax
the columns of pixels that begin with column cmin and go up to but not including column cmax."""
    img = load_image(filename)
    new_img = Image(rmax - rmin, cmax - cmin)
    for r in range(rmin, rmax):
        for c in range(cmin, cmax):
            # get the colors of the current pixel at row r, column c
            pixel = img.get_pixel(r, c)

            # set the pixel to a different position
            new_img.set_pixel(rmax - 1 - r, rmax - 1 - c, pixel)

    # save the modified image, using a filename that is based on the
    # name of the original file.
    new_filename = 'extract_' + filename
    new_img.save(new_filename)
