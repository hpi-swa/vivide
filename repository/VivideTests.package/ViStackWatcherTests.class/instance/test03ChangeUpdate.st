tests
test03ChangeUpdate
	<timeout: 30000>
	self addDependent: self.
	self forkAndSpyOn: [self methodD].