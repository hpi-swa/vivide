accessing
currentQuery: aQueryStep
	
	self clearError.
	
	aQueryStep == self currentQuery
		ifFalse: [
			aQueryStep ifNotNil: [
				self flag: #metaScript.
				self layoutChanged].
			
			self model firstStep: aQueryStep.
			self updateView. "Evaluation will happen lazily."
			
			aQueryStep ifNotNil: [
				self currentQueryChanged: aQueryStep]]
		ifTrue: [
			"Rare case."
			"self view ifNil: [self updateView]."
			
			self currentQuery notNil
				"Force re-evaluation NOW."
				ifTrue: [self updateResults]].