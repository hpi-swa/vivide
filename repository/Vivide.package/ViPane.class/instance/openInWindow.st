as yet unclassified
openInWindow

	self width: 700. "Better support for height-for-width layouts."
"	self fullBounds.

	self
		width: ((self optimalWidth min: 700) max: 200);
		fullBounds;
		height: ((self optimalHeight min: 500) max: 200).	
"
	self
		openInWindowBounds: (RealEstateAgent
			initialFrameFor: Morph new "Workaround. We do not have the window yet."
			initialExtent: self extent
			world: ViActiveVivide world)
		grab: (ViActiveVivide world == Project current world
				and: [self currentEvent isMouse and: [self currentEvent isMouseUp or: [self currentEvent isMouseOver and: [self currentEvent redButtonPressed]]]]).
				
	self decoration window resizeBoxHit.
	self width: (self width max: 200 * RealEstateAgent scaleFactor).
	self height: (self height min: 500 * RealEstateAgent scaleFactor).

	^ self