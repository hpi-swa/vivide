private - merge
mergeCommand: selector
	
	(archive theNonMetaClass perform: selector asSymbol) in: [:spec |
		
		((organizer commandById: (spec at: #id))
			ifNotNil: [:command | command mergeFromDictionary: spec; yourself]
			ifNil: [(ViScriptObject newFrom: spec) organization: organizer; register; yourself])
				in: [:command |
					commands add: command.
					^ command]].