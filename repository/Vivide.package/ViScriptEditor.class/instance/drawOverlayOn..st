drawing
drawOverlayOn: aCanvas

	| label end |

	super drawOverlayOn: aCanvas.
	self drawMapOn: aCanvas.

	(self drawFlags includes: #addConnection) ifTrue: [
		aCanvas
			frameAndFillRectangle: self bounds
			fillColor: ((Color fromString: #'5E7914') alpha: 0.3)
			borderWidth: 2
			borderColor: (Color fromString: #'5E7914')].

	shouldPropose == true ifTrue: [
		aCanvas
			translucentImage: UiFugueIcons wandSmallIcon
			at: edit topLeft + (0@2). 
		].

	"Show end of level in model tree."
	self object ifNil: [^ self].
	(self object isEndOfLevel and: [self isScriptInaccessible not]) ifTrue: [
		end := self isScriptEndOfTree.
		label := (end ifFalse: ['next level'] ifTrue: ['end of tree']) asText.
		label
			addAttribute: (TextFontReference toFont: Preferences standardButtonFont);
			addAttribute: (TextColor color: (Color gray: 0.3)).
		label := label asMorph.
		label
			autoFit: true;
			center: self bottomCenter - (0@5).
		
		aCanvas
			line: self bottomLeft - (-5 @ 6)
			to: self bottomRight - (5 @ 6)
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