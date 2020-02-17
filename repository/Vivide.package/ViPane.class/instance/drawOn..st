drawing
drawOn: aCanvas

	super drawOn: aCanvas.
	
	"Fall-back to avoid glitches with shadow."
	(self owner == self world and: [self color isTransparent]) ifTrue: [
		aCanvas
			fillRectangle: self bounds
			color: (Color gray: 0.85)].
	
	self view ifNil: [
		aCanvas
			frameRectangle: (self bounds insetBy: 10)
			width: 1
			color: (Color fromString: '#999999').
		self flag: #performance. "mt: Draw text directly or cache text morph object."
		'<font size="9" color="#999999">No scenario found.</font>' asTextFromHtml asMorph
			center: self center;
			drawOn: aCanvas].