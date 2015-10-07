updating - view
updateView
	
	"1) Prepare."
	self removeProperty: #lastSelection.
	self clearError.
	ViArtifactToolbar hideAllToolbars.
	
	"2) Update view."
	[
		self currentQuery ifNotNil: [:script |
			(script updateView: self view forEnvironment: self) in: [:view |
				"Provide current meta-data to view."
				view setUp: script.
			
				"If the view changed, give the model once."
				view ~~ self view ifTrue: [self view: view].

				"Give views the chance to process the model with changed setup."
				view process: self model ] ].
	] on: Error do: [:ex |
		self showError: (ViShallowException for: ex)].
	
	"3) Update pane-specific stuff."
	self updateColor.