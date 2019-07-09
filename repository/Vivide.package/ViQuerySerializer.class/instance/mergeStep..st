private - merge
mergeStep: selector

	(archive theNonMetaClass perform: selector asSymbol) in: [:spec |
		
		((organizer stepById: (spec at: #id))
			ifNotNil: [:step | step mergeFromDictionary: spec; yourself]
			ifNil: [(ViScriptObject newFrom: spec) organization: organizer; register; yourself])
				in: [:step |
					steps add: step.
					^ step]].