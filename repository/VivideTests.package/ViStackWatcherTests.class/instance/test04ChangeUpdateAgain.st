tests
test04ChangeUpdateAgain
	<timeout: 1000>
	
	Smalltalk platformName = 'unix' "Travis"
		ifTrue: [^ self].
	Smalltalk platformName = 'Mac OS' "Travis"
		ifTrue: [^ self].
		
	helper := Morph new.
	helper addDependent: self.
	self forkAndSpyOn: [helper changed: #helper].