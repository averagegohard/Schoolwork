def myslice(lst, start, end):
    """implements the same behavior as the list slice operator using recursion"""
    if start>=end:
        return []
    if start!=0:
        return myslice(lst[1:], start-1, end-1)
    else:
        rest=myslice(lst[1:],0,end-1)
        return [lst[0]]+rest
