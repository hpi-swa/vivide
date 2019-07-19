updating - view
updateView
	
	"1) Prepare."
	self removeProperty: #lastSelection.
	self clearError.
	ViArtifactToolbar hideAllToolbars.
	
	"2) Update view."
	[
		self script ifNotNil: [:script |
			script viewClass in: [:viewClass |
				(self view class = viewClass
					ifTrue: [self view "Keep the view"]
					ifFalse: [viewClass new]) in: [:view |
						"Provide current meta-data to view."
						view setUp: script.
					
						"If the view changed, give the model once."
						view ~~ self view ifTrue: [self view: view].

						"Give views the chance to process the model with changed setup."
						view process: self model ] ] ].
	] on: Error do: [:ex | self triggerShowError: ex].
	
	"3) Update pane-specific stuff."
	self updateColor.