accessing
knownScripts

	^ Array streamContents: [:result |
		"1) All labeled scripts."
		self organization orderedSteps do: [:step |
			step nextLabel notNil ifTrue: [
				result nextPut: step]].
		"2) Recently used scripts."
		result nextPutAll: self recentScripts.
		"3) Current script."
		self script ifNotNil: [:step | result nextPut: step]]