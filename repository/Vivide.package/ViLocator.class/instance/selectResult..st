actions - results
selectResult: aNode

	aNode ifNil: [^ self].
	
	((aNode at: #object) isKindOf: ViLocatorOperation)
		ifTrue: [self
				theText: ((aNode at: #object) shortcut), ' ';
				select: (self theText size + 1 to: self theText size);
				grabKeyboard]
		ifFalse: [
			self hideResults.
			self objectLocated: (aNode at: #object) inSource: (aNode at: #source).
			self artifactRequested: (aNode at: #object)].