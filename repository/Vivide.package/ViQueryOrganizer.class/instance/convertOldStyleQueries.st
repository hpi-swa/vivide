maintenance
convertOldStyleQueries

	(self queries
		collect: [:query | self convertOldStyleQuery: query]
		thenDo: [:step |
			step allStepsDo: [:s | 
				s isReferenceStep ifFalse: [self mergeDefinitionsFor: s]].
			step register.
			Transcript cr; show: ('[ViQueryOrganizer] New step registered: ''{1}'' <{2}>'
				format: {step label.step id})
			]) explore.