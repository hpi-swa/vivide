meta-scripts
metaScriptReferences

	^ self metaScriptReferenceIds
		collect: [:id | self organization stepById: id]
		thenSelect: [:scriptOrNil | scriptOrNil notNil] 