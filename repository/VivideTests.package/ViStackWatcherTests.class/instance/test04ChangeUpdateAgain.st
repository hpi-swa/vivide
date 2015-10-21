tests
test04ChangeUpdateAgain
	<timeout: 30000>
	helper := Morph new.
	helper addDependent: self.
	self forkAndSpyOn: [helper changed: #helper].