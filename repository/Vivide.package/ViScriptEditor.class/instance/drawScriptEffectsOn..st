drawing
drawScriptEffectsOn: aCanvas
	"Show end of level in model tree."

	| label end font |	
	self object ifNil: [^ self].
	
	font := Preferences standardButtonFont.
	
	(self isScriptEndOfLevel and: [self isScriptInaccessible not]) ifTrue: [
		end := self isScriptEndOfTree.
		label := (end ifFalse: ['next level'] ifTrue: ['end of tree']) asText.
		label
			addAttribute: (TextFontReference toFont: font);
			addAttribute: (TextColor color: (Color gray: 0.3)).
		label := label asMorph.
		label
			autoFit: true;
			center: self bottomCenter - (0@ (self layoutInset bottom - (font height / 2))).
		
		aCanvas
			line: self bottomLeft - (-5 @ (self layoutInset bottom - (font height / 2)))
			to: self bottomRight - (5 @ (self layoutInset bottom - (font height / 2)))
			width: 1
			color: (Color gray: 0.3)
			dashLength: 3
			secondColor: Color transparent
			secondDashLength: 6
			startingOffset: 0.
		aCanvas
			fillRectangle: (label bounds outsetBy: (5@ -5 corner: 5@ -5))
			color: self color.
		label fullDrawOn: aCanvas.
			 ].