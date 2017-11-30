tests
test03ChangeUpdate
	<timeout: 500>
	
	self addDependent: self.
	self forkAndSpyOn: [self methodD].