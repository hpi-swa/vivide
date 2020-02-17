support
methodReferenceForDefinition: definition

	^ MethodReference
		class: self theClass theMetaClass
		selector: (self selectorForDefinition: definition asDictionary)