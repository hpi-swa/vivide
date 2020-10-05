accessing
firstVal

	^ firstVal
		ifNil: [self minVal]
		ifNotNil: [firstVal max: self minVal]