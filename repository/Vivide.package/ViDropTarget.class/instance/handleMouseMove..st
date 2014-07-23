events-processing
handleMouseMove: aMouseEvent
	"Overridden to handle ANY move event."
	
	super handleMouseMove: aMouseEvent.
	
	"Indicate dropping target visually."
	(aMouseEvent hand hasSubmorphs
		and: [self
			wantsDroppedMorph: aMouseEvent hand submorphs first
			event: aMouseEvent])
		ifTrue: [
			| r |
			r := self dropRectangleForEvent: aMouseEvent.
			lastDropRectangle ~= r ifTrue: [self redrawLater].
			lastDropRectangle := r]
		ifFalse: [self clearDropRectangle].