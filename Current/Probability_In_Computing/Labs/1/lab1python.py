# Keyan Vakil
from matplotlib import pyplot as plt
import numpy as np
from numpy.random import randint
import random


# Sources used:
# Stack Overflow
# Youtube matplotlib tutorials by Sentdex
# Matplotlib pyPlot documentation
# This website: http://sphinxcontrib-napoleon.readthedocs.io/en/latest/example_google.html
    # for doctstrings

# Discussed the assignment with Ray Katz and Ellie ...?

# No late days used in general or for this assignment


def ex1():
    """plot the points (1,1),(2,2),(3,3),(4,4)

    No args

    Returns:
        plot: a plot with a dotted red line going
        through each point
        plot: a different plot with 4 points
        as blue triangles going through each point

    """
    # create x and y values
    x = [1,2,3,4]
    y = [1,2,3,4]

    # make sure they can represent points
    assert len(x) == len(y)

    #iterate through the points
    for i in range(len(y)):
        #switch to the first plot
        plt.figure(0)
        #plot the point on the first plot as a blue triangle
        plt.plot(x[i], y[i], 'b^')
        #draw the figure
        plt.draw()

    #switch to the second plot
    plt.figure(1)
    #plot the points on the second plot as a red dotted line
    plt.plot(x,y, linestyle=':', color='r')

    #draw the figure
    plt.draw()
    #show the plot
    plt.show()


def dieroll(m):
    """ dieroll estimates the PMF of a random variable Y
    where Y represents the number that comes up when
    you roll a fair die

    Args:
        m (int): The number of rolls to simulate

    Returns:
        - a plot of the PMF of the random variable

    """
    # number of rolls of m die
    number_of_rolls = 10000

    #Generate an array of size num_of rolls with integers 1 thorugh 6

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

    #Create a figure
    plt.figure(1)

    #Use the pyPlot.hist() function to plot the data.
    plt.hist(y_series,
    #This sets the number of bars in the histogram
    #assuming the die is 6 sided
    # the range of the bins to be displayed
    # (formatted for visual appeasement)
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
    """ estimates pi=3.14 using the Monte Carlo Method

    Args:
        numPoints (int): The number of points used to calculate
        the value of pi

    Returns:
        float: The estimated value of pi.

    """
    # count of the points in the circle
    C = 0
    # count of the points in total
    T = 0

    # for each point
    for _ in range(numPoints):
        # create a random x, y pair to represent coordinates
        x = random.uniform(-1, 1)
        y = random.uniform(-1, 1)

        # if the coordinates are contained within the
        # unit circle (if the distance from the center
        # is less than the radius of the unit circle = 1)
        if (x**2 + y**2) < 1.0:
            # add one to the in_circle count
            C += 1
        T += 1

    # 4 times this ratio will equal pi
    # this can be determined by manipulating the formula for the
    # area of a circle (pi*r^2) and the formula for the area of
    # a square (4*r^2)
    return 4.0*C / T


def expt(p):
    """ simulates flipping a p-biased coin until the
    coin comes up as heads

    Args:
        p (float): A float value from 0-1 inclusive that
        represents the bias of the

    Returns:
        float: The estimated value of pi.

    """
    # function that simulates flipping a p-biased
    # coin until the coin comes up heads, and outputs
    # the numer of flips that were required (up to and
    # including the final flip)

    #keep track of the count
    count = 0
    # keep iterating until we get a head
    while True:
        # add one to the count
        count += 1
        # get the random number
        num = np.random.random()
        # if the random number is less than p
        if num < p:
            # that would be considered a heads,
            # so return the count
            return count


def Coin_flip_test(n,p):
    """ runs expt(p) multiple times, each with independent
    randomness

    Args:
        n (int): The number of times to run expt(p)
        p (float): The float value to be passed into the expt
        function

    Returns:
        list: A list of ints containing the counts for
        each call of expt(p)

    """
    # runs expt(p) n different times, each with
    # independent randomness
    results = []
    while n > 0:
        results.append(expt(p))
        n -= 1
    return results


def plot_coin_flips(n,p):
    """ plots a histogram of the output of
    Coin_flip_test(n,p)

    Args:
        n (int): Number of flips to be passed into
        Coin_flip_test
        p (float): Weight of the coin to be passed into
        Coin_flip_test

    Returns:
        plot: A histogram of the output of the function

    """



    def draw_pmf(results, p):
        """ function that plots the PMF corresponding
        with the values shown in plot_coin_flips

        Args:
            results (list): A list of the results of
            Coin_flip_test so that the pmf corresponds
            to the same results that were graphed (we can't
            call Coin_flip_test again because the results
            would be different)
            p (float): Weight of the coin to be used for
            calculation of the pmf

        Returns:
            plot: A curved line representing the PMF of
            the frequencies in question

        """

        #make sure we're on figure 1
        plt.figure(1)
        # get the max value of the results...
        max_val = np.amax(results)
        # ...in order to find the range of the x values
        # in the graph
        x = range(1, max_val+1)
        # find the correspond PMF values
        y = [p*(1-p)**(val-1) for val in x]
        # plot the values
        plt.plot(x, y)
        # draw the values on the graph
        plt.draw()

    # make sure we're on figure 1
    plt.figure(1)

    # get the result of flipping a p-biased coin n times
    results = Coin_flip_test(n,p)
    # convert to a numpy array
    results = np.array(results)

    # plot a histogram of the frequencies of the results
    plt.hist(results,
        # center align the bins
        align='mid',
        # the number of bins should be equal to the
        # max value within the results
        bins=np.amax(results),
        #This reweights the data so we see probabilities on the y-axis
        weights=np.zeros_like(results) + 1. / results.size)

    # draw the histogram
    plt.draw()
    # draw the pmf function on top of the histogram
    # (for problem 6)
    # comment this line out if testing problem 4 by
    # itself
    draw_pmf(results, p)
    # show the graph
    plt.show()


# Problem 1
#ex1()

# Problem 2
#dieroll(1)
#dieroll(5)
#dieroll(10)
#dieroll(100)

# Problem 3
#print pi_Estimate(1000000)
# It requires numPoints on the order of 10^6 to get
# pi=3.14 consistantly

# Problem 4 (must comment out a line in order for this
# to work without the PMF values)
#samples = 10000
#plot_coin_flips(samples, .2)
#plot_coin_flips(samples, .5)
#plot_coin_flips(samples, .8)
# These graphs do look like how I expect them to look
# since the probability of the first coin being heads
# is the same as the weight of the coin and that the
# probability that it would take more than 1 coin to
# get a heads consistnatly decreases exponentially

# Problem 5
# k is the number of trials and p is probability
# for k=1 --> probability = p (1 heads)
# for k=2 --> probability = p*(1-p) (1 heads and 1 tails)
# for k=3 --> probability = p*(1-p)*(1-p) (1 heads and two tails)
# for k=4 --> probability = p*(1-p)^3 (1 heads and three tails)

# General formula based off of these cases:
# Pr(X=k) for all k in Range(X) = p*(p-1)^(k-1)

# Problem 6
#m = 10000
#plot_coin_flips(m, .2)
#plot_coin_flips(m, .5)
#plot_coin_flips(m, .8)
