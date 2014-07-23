initialization
popUpAt: aPoint

	self
		fullBounds;
		bottomLeft: aPoint + (self layoutInset negated @ 35);
		updateAlpha: aPoint;
		openInWorld.