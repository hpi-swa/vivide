tests
test03ChangeUpdate

	self addDependent: self.
	self forkAndSpyOn: [self methodD].