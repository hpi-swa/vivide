tests
test04ChangeUpdateAgain
	<timeout: 1500>
	helper := Morph new.
	helper addDependent: self.
	self forkAndSpyOn: [helper changed: #helper].