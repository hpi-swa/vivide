tests
test03ChangeUpdate
	<timeout: 500>
	
	Smalltalk platformName = 'unix' "Travis"
		ifTrue: [^ self].
	Smalltalk platformName = 'Mac OS' "Travis"
		ifTrue: [^ self].
	
	self addDependent: self.
	self forkAndSpyOn: [self methodD].