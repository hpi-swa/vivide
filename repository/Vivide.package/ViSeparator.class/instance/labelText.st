accessing
labelText

	^ labelText ifNil: [ labelText := 
		(label ifNil: [ViLabelService doObject: self object]) asText
			addAttribute: (TextFontReference toFont: Preferences standardButtonFont);
			addAttribute: (TextColor color: (Color gray: 0.66));
			yourself] 