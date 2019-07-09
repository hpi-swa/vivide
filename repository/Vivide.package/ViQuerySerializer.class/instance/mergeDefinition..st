private - merge
mergeDefinition: selector

	(archive theNonMetaClass perform: selector) in: [:spec |

		((organizer definitionById: (spec at: #id))
			ifNotNil: [:definition | definition mergeFromDictionary: spec; yourself]
			ifNil: [(ViScriptObject newFrom: spec) organization: organizer; register; yourself])
				in: [:definition |
					definitions add: definition.
					^ definition]]