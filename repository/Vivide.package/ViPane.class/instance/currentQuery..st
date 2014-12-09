accessing
currentQuery: aQueryStep
	
	self clearError.
	
	aQueryStep == self currentQuery
		ifFalse: [
			self flag: #metaScript.
			self layoutChanged.
			
			self model resetSilently.
			self model firstStep next: aQueryStep.
			self updateView. "Evaluation will happen lazily."
			self currentQueryChanged: aQueryStep]
		ifTrue: [
			self currentQuery notNil
				"Force re-evaluation NOW."
				ifTrue: [self updateResults]].