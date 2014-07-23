updating
updateViews
	
	(self currentQuery ifNotNil: [:q |
		q updateView: self view forEnvironment: self]) in: [:newView |
			newView ~~ self view ifTrue: [
				self view ifNotNil: [:v |
					v model: nil; delete].
				newView ifNotNil: [:v |				
					v
						model: self queryModel;
						hResizing: #spaceFill;
						vResizing: #spaceFill.
					self addMorph: newView]]].