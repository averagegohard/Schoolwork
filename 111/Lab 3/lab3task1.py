#
# Name: Keyan Vakil
#
# lab3task1.py
#

def starts_with(s, prefix):
    """Returns whether the string s starts with the string prefix.

    Parameters:
    s -- a string
    prefix -- a string
    """
    if prefix == '':
        return True
    elif s[0] != prefix[0]:
        return False
    elif len(prefix)>len(s):
        return "Error! Cannot have the prefix larger than the string"        
    else:
        return starts_with(s[1:],prefix[1:])
