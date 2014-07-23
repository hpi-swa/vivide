updating - view
updateView
	
	(self currentQuery ifNotNil: [:q |
		q updateView: self view forEnvironment: self]) in: [:newView |
			newView ~~ self view ifTrue: [
				self view ifNotNil: [:v |
					v model: nil; delete].
				newView ifNotNil: [:v |				
					v
						model: self model;
						hResizing: #spaceFill;
						vResizing: #spaceFill.
					self addMorphBack: newView]]].
	
	self clearError.
	self flash.
	ViArtifactToolbar hideAllToolbars.