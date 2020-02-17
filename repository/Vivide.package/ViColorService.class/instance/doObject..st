squeak - kernel
doObject: anObject
	"Provide a generic color representation for any object based on its hash."
	
	anObject isMorph ifTrue: [^ anObject color].
	
	^ (super doObject: anObject) ifNil: [
		Color
			h: anObject hash \\ 360
			s: 0.6 
			v: 1.0]