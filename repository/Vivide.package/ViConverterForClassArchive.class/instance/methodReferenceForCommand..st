support
methodReferenceForCommand: command

	^ MethodReference
		class: self theClass theMetaClass
		selector: (self selectorForCommand: command asDictionary)