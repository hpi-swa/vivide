running
performTest

	Smalltalk platformName = 'unix' "Travis"
		ifTrue: [^ self].
	Smalltalk platformName = 'Mac OS' "Travis"
		ifTrue: [^ self].
		
	super performTest.