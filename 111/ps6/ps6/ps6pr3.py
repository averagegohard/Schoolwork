#
# ps6pr3.py (Problem Set 6, Problem 3, Tasks 3 and 4)
#
# testing for uniqueness
#
# name: 
# email:
#
# If you worked with a partner, put his or her contact info below:
# partner's name:
# partner's email:
#

# IMPORTANT: This file is for tasks 3 and 4 of problem 3.
# For tasks 1 and 2, use ps6pr3.txt instead.

### Replace the numbers in the following string with the numbers
### produced by your LCG using your choices of a and c.
NUMBERS = """
103
102
104
101
105
"""

def test():
    """ turns the string of integers NUMBERS into a list of integers and
        runs your unique() function on that list of integers, returning
        whatever it returns.

        NOTE: The commented-out print statements are there in case you'd
        like to gain more insight into what test() is doing.
        If you uncomment them, please re-comment them before you submit.
    """    
    list_of_strings = NUMBERS.strip().split()
    # print('list_of_strings is:', list_of_strings)

    list_of_ints = [int(s) for s in list_of_strings]
    # print('list_of_ints is:', list_of_ints)

    return unique(list_of_ints)

### Put your definition of the unique() function below.
