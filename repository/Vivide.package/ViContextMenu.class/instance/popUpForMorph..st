initialization
popUpForMorph: aMorph

	| pt |
	pt := aMorph boundsInWorld topLeft.
	self
		fullBounds;
		bottomLeft: pt + (-45 @ 45);
		updateAlpha: pt;
		openInWorld.