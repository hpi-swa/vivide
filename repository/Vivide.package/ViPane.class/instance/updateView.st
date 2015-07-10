updating - view
updateView
	
	self removeProperty: #lastSelection.
	
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
	
	self
		clearError;
		updateColor;
		flash.
		
	ViArtifactToolbar hideAllToolbars.