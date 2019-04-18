meta-scripts
metaReference

	^ self metaReferenceId in: [:id |
		((self organization stepById: id)
			ifNil: [ViScriptOrganizer active stepById: id])
			ifNil: [ViProfile active ifNotNil: [:profile |
				profile organization stepById: id]]]