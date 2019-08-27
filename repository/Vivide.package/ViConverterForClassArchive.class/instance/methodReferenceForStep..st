support
methodReferenceForStep: step

	^ ViScriptReference
		class: self theClass theMetaClass
		selector: (self selectorForStep: step asDictionary)