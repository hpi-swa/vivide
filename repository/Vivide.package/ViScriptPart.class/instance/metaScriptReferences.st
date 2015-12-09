meta-scripts
metaScriptReferences

	^ self metaScriptReferenceIds
		collect: [:id | ((self organization stepById: id)
			ifNil: [ViQueryOrganizer active stepById: id])
			ifNil: [ViProfile active ifNotNil: [:profile |
				profile organization stepById: id]]]
		thenSelect: [:scriptOrNil | scriptOrNil notNil] 