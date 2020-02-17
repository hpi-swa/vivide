geometry - actions
openInWindow
	
	^ self
		openInWindowBounds: (RealEstateAgent
			initialFrameFor: Morph new "Workaround. We do not have the window yet."
			initialExtent: self fullBounds extent
			world: ViActiveVivide world)
		grab: (ViActiveVivide world == Project current world
				and: [self currentEvent isMouse and: [self currentEvent isMouseUp or: [self currentEvent isMouseOver and: [self currentEvent redButtonPressed]]]])