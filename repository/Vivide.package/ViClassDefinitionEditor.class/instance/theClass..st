accessing
theClass: aClassOrMetaClass

	aClassOrMetaClass
		ifNil: [self setDefaultClassDefinition]
		ifNotNil: [:cls |
			self artifact
				theClass: (cls isClassReference ifTrue: [cls actualClass] ifFalse: [cls]) theNonMetaClass;
				autoCreateArtifacts: true].
	
	self resetSource.