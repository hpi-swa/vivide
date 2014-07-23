accessing - ui
ensureSourceEditor

	^ (self ui panel submorphs at: (self ui panel submorphs indexOf: self ui listView) + 1)
		ifNotNil: [:morph | morph class == ViSourceCodeEdit
			ifTrue: [morph]
			ifFalse: [
				| editor |
				morph == self ui controlsContainer
					ifFalse: [morph close].
				
				editor := ViSourceCodeEdit new
					theClass: UndefinedObject; "dummy for styling"
					hResizing: #spaceFill;  
					height: 300;
"					scrollingMode: #always;
					scrollingLimit: 10;  
"					colorFocusBackground: Color white;
					colorFocusBorder: (Color gray: 0.3);
					colorBackground: (Color gray: 0.85).

				self ui panel addMorph: editor after: self ui listView.
				editor]]