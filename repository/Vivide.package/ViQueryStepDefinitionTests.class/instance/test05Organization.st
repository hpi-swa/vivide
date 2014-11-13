tests
test05Organization

	| def orga |
	orga := ViQueryOrganizer new.
	def := ViQueryStepDefinition new
		id: #test05Organization;
		organization: orga;
		sourceCode: '[:obj | obj asString]'.
	self assert: (orga definitionById: #test05Organization) isNil.
	
	def register.
	self assert: (orga definitionById: #test05Organization) == def.
	
	def id: #test05OrganizationChanged.
	self
		assert: (orga definitionById: #test05Organization) isNil;
		assert: (orga definitionById: #test05OrganizationChanged) == def.
	
	def unregister.
	self assert: (orga definitionById: #test05OrganizationChanged) isNil.