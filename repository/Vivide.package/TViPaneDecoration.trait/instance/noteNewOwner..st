resize grips
noteNewOwner: aMorph

	super noteNewOwner: aMorph.
	self submorphsDo: [:m |
		(m isKindOf: AbstractResizerMorph) ifTrue: [m target: self pane]].