tests
test04ChangeUpdateAgain
	<timeout: 500>
		
	helper := Morph new.
	helper addDependent: self.
	self forkAndSpyOn: [helper changed: #helper].