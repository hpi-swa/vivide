as yet unclassified
drawOn: aCanvas

	| anchor |
	super drawOn: aCanvas.
	
	anchor := self itemMorph bottomCenter.
	
	self childMorphs submorphs do: [:m |
		aCanvas
			line: anchor
			to: m layoutBounds topCenter
			width: m lineWeight
			color: Color black].