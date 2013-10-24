#!/usr/bin/env python

# to test program in the Python interpreter:
# $ python
# >>> execfile("longest.py")
# >>> substring("Hello")
# 3
# hel
# >>> substring("Hello")

# to test program unit tests in shell:
# $ python longest.py -v


def substring(s):
	""" Function that accepts a string and computes the longest substring of 
		unique characters and its length (does not computer multiple answers).

		>>> substring("welcometomyhomedearfriend")
		welcom
		6
		>>> substring("aSDErDFStringyDEFlEp")
		stringydefl
		11
		>>> substring("welcomefriend")
		lcomefri
		8
		>>> substring("Hello")
		hel
		3

	"""

	# your code here

if __name__ == '__main__':
    import doctest
    doctest.testmod()
