from matplotlib import pyplot as plt
import numpy as np
from numpy.random import randint
import random


def ex1():
    #Exercise 1

    #create a list of points
    points = [[1,1],[2,2],[3,3],[4,4]]

    #iterate through the points
    for point in points:
        #switch to the first plot
        plt.figure(0)
        #plot the point on the first plot as a blue triangle
        plt.plot(point[0], point[1], 'b^')
        #draw the figure
        plt.draw()

    #switch to the second plot
    plt.figure(1)
    #plot the points on the second plot as a red dotted line
    plt.plot([1,2,3,4], linestyle=':', color='r')
    #draw the figure
    #plt.draw()

    #show the plot
    plt.show()


def dieroll(m):
    number_of_rolls = 10000
    #Generate an array of size 10,000 with integers 1 thorugh 6
    #computationallty faster version
    #create all die rolls necessary
    rolls = randint(1,7,(1,number_of_rolls*m))
    #The previous line returns a multi-dimensional array,
    #and we only want the first row of the output
    rolls = rolls[0]
    #intantiate y_series data
    y_series = []
    #iterate through each group of die rolls
    for i in range(number_of_rolls):
        #initialize the end value to 0
        val = 0
        #for each group of die rolls
        for j in range(m):
            #get the sum of the group of die rolls
            val += rolls[i*m+j]
        #add the sum of the group of die rolls to the y_series
        y_series.append(val)
    #Change the list into a numpy array
    y_series = np.array(y_series)
    """
    for each in y_series:
        if type(each) == type(0):
            pass
        else:
            pass
            #print each
            """
    #Create a figure
    plt.figure(1)
    #Use the pyPlot.hist() function to plot the data.
    plt.hist(y_series,
    #This sets the number of bars in the histogram
    #assuming the die is 6 sided
    # BINS
    bins=range(m-1, 6*m+2),
    #This changes the relative width of the bars
    width=.7,
    #This centers the bars
    align='mid',
    #This reweights the data so we see probabilities on the y-axis
    weights=np.zeros_like(y_series) + 1. / y_series.size)
    #Set some feature of the graph, so it looks good
    #X-axis size (makes sure all bars are visible)
    # plt.xlim(m-1,5*m+3)
    plt.title("Rolling a Die")
    plt.xlabel("Value")
    plt.ylabel("Probability")
    #Show the figure
    plt.show()

def pi_Estimate(numPoints):
    C = 0
    T = 0
    for _ in range(numPoints):
        # should go from -1 to 1??
        x = random.uniform(-1, 1)
        y = random.uniform(-1, 1)

        # if the coordinates are contained within the
        # unit circle (if the distance from the center
        # is less than the radius of the unit circle = 1)
        if (x**2 + y**2) < 1.0:
            # add one to the in_circle count
            C += 1
        T += 1
    return 4.0*C / T


def expt(p):
    count = 0
    while True:
        count += 1
        num = np.random.random()
        if num < p:
            return count

def Coin_flip_test(n,p):
    results = []
    while n > 0:
        results.append(expt(p))
        n -= 1
    return results

def plot_coin_flips(n,p):
    results = Coin_flip_test(n,p)
    results = np.array(results)
    plt.hist(results,
        align='mid',
        bins=len(results),
        #This reweights the data so we see probabilities on the y-axis
        weights=np.zeros_like(results) + 1. / results.size)
    plt.show()

# plot_coin_flips(10000,.1)
#ex1()
dieroll(10)

#Number of points to display pi=3.14 consistantly
#print pi_Estimate(10000000)

# TODO documentation, fix bins parameter in dieroll method, solve question 5 mathematically and implement number 6 using question 5
