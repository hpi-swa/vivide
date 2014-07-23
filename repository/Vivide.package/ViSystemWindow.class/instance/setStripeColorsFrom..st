label
setStripeColorsFrom: paneColor 
	"Set the stripe color based on the given paneColor"

	labelArea ifNotNil: [labelArea color: Color transparent].
	self updateBoxesColor: (self isActive 
				ifTrue: [paneColor]
				ifFalse: [paneColor muchDarker]).
	stripes ifNil: [^self].
	self isActive 
		ifTrue: [self fillStyle: (SolidFillStyle color: paneColor)] 
		ifFalse: [self fillStyle: (SolidFillStyle color: paneColor darker)].