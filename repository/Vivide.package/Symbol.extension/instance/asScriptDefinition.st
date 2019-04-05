*vivide-queries
asScriptDefinition

	^ (ViQueryOrganizer active ifNil: [ViProfile active ifNotNil: [:p | p organization]])
		ifNotNil: [:organization | organization definitionById: self]