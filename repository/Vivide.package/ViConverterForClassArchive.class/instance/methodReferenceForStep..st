support
methodReferenceForStep: step

	^ MethodReference
		class: self theClass theMetaClass
		selector: (self selectorForStep: step asDictionary)