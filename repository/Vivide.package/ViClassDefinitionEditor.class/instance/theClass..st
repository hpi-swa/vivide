accessing
theClass: aClassOrMetaClass

	aClassOrMetaClass
		ifNil: [self setDefaultClassDefinition]
		ifNotNil: [:cls |
			self artifact
				theClass: cls theNonMetaClass;
				autoCreateArtifacts: true].
	
	self resetSource.