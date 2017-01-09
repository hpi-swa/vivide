actions
debugQuery: aQuery

	ViProfile active ifNotNil: [:profile |
		profile recentScripts addObject: aQuery].

	^ aQuery editScriptWith: self objects