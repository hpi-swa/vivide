comparing
= o

	^ self == o or: [
		(self class == o class
			and: [self primarySource = o primarySource])
			and: [self secondarySource = o secondarySource]]