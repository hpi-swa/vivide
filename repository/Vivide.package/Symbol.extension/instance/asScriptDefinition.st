*vivide-queries
asScriptDefinition

	^ (ViScriptOrganizer active ifNil: [ViProfile active ifNotNil: [:p | p organization]])
		ifNotNil: [:organization | organization definitionById: self]