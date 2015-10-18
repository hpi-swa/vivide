tests
test03ChangeUpdate
	<timeout: 1500>
	self addDependent: self.
	self forkAndSpyOn: [self methodD].