tests
test04ChangeUpdateAgain

	helper := Morph new.
	helper addDependent: self.
	self forkAndSpyOn: [helper changed: #helper].