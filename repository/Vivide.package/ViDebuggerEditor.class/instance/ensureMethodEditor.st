accessing - ui
ensureMethodEditor

	^ (self ui panel submorphs at: (self ui panel submorphs indexOf: self ui listView) + 1)
		ifNotNil: [:morph | morph class == ViMethodEditor
			ifTrue: [morph isCollapsed ifTrue: [morph expand]. morph]
			ifFalse: [
				| editor |
				morph == self ui controlsContainer
					ifFalse: [morph delete].
				
				editor := ViMethodEditor new
					hResizing: #spaceFill;
					lockSize.

				self ui panel addMorph: editor after: self ui listView.
				editor]]