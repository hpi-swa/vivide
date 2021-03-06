accessing - many
beforeScripts

	| scripts |
	scripts := Array streamContents: [:result |
		| ids count |
		ids := self before.
		count := ids size.
		self allStepsDo: [:step |
			count = 0
				ifTrue: [^ result contents]
				ifFalse: [
					(ids includes: step id)
						ifTrue: [
							count := count - 1.
							result nextPut: step]]]].
	
	ViScriptNotFound signal.
	^ scripts