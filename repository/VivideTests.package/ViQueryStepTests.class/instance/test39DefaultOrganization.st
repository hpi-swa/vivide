as yet unclassified
test39DefaultOrganization
	
	sut := ViScriptPart new.
	self deny: sut isDefault.
	self assert: sut organization notNil.