tests
test03ChangeUpdate
	<timeout: 5000>
	self addDependent: self.
	self forkAndSpyOn: [self methodD].