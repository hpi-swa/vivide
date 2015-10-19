tests
test04ChangeUpdateAgain
	<timeout: 5000>
	helper := Morph new.
	helper addDependent: self.
	self forkAndSpyOn: [helper changed: #helper].