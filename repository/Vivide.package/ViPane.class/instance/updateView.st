updating - view
updateView
	
	self removeProperty: #lastSelection.
	
	self currentQuery ifNotNil: [:script |
		(script updateView: self view forEnvironment: self) in: [:view |
			"Provide current meta-data to view."
			view setUp: script.
		
			view ~~ self view ifTrue: [
				self view: view.
				view process: self model] ] ].

	self
		clearError;
		updateColor.
		
	ViArtifactToolbar hideAllToolbars.