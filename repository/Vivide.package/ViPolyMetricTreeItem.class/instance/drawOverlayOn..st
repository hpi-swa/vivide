as yet unclassified
drawOverlayOn: aCanvas

	| anchor |
	super drawOverlayOn: aCanvas.
	
	anchor := self itemMorph bottomCenter.
	
	self childMorphs submorphs do: [:m |
		aCanvas
			line: anchor
			to: m layoutBounds topCenter
			width: m lineWeight
			color: Color black].