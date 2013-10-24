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

	s=s.lower()
	n=len(s)
	ss=[] #substring set
	longest=1
	longesti=0
	longestj=0

	i=0
	while(i<n):
		# if the remainder of the string to be evaluated is 
		# less than the longest found so far, we are done.
		if n-i<longest:
			break		

		ss=[]

		for j in range(i,n):
			if s[j] not in ss:
				ss.append(s[j])
			else:
				if len(ss)>longest:
					longest=len(ss)
					longesti=i
					longestj=j
				# shortcut to reduce substrings we need to test	
				i += ss.index(s[j])
				break
		i += 1
	print(s[longesti:longestj])
	return longest

if __name__ == '__main__':
    import doctest
    doctest.testmod()
