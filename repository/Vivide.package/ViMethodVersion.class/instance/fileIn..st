compiling
fileIn: aClass
	aClass isNil
		ifTrue: [ ^ self ].
	aClass
		compile: self source
		classified: self category
		withStamp: self stamp
		notifying: nil