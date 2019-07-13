support
methodReferenceForProfile: profile

	^ MethodReference
		class: self theClass theMetaClass
		selector: (self selectorForProfile: profile asDictionary)