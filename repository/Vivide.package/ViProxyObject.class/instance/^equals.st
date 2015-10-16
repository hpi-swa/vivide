comparing
= o

	^ self == o or: [
		(self class == o class
			and: [self accessString = o accessString])
			and: [self returnType = o returnType]]