tests - script definition
test02OrganizeDefinitions

	| def orga |
	def := ViScriptDefinition new
		id: #test02OrganizeDefinitions;
		sourceCode: '[:in :out | out addAll: in]'.
	orga := ViScriptOrganizer new.

	self
		assert: def isRegistered;
		deny: def organization == orga;
		assert: (orga definitionById: #test02OrganizeDefinitions) isNil.
	
	def organization: orga.
	self deny: def isRegistered.
	def register.
	
	self
		assert: def isRegistered;
		assert: (orga definitionById: #test02OrganizeDefinitions) == def.
	
	def id: #test02OrganizeDefinitionsChanged.
	self
		assert: (orga definitionById: #test02OrganizeDefinitions) isNil;
		assert: (orga definitionById: #test02OrganizeDefinitionsChanged) == def.
	
	def unregister.
	self
		deny: def isRegistered;
		assert: (orga definitionById: #test02OrganizeDefinitionsChanged) isNil.