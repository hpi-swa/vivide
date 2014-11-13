geometry - actions
openInWindow
	
	^ self
		openInWindowBounds: (RealEstateAgent
			initialFrameFor: Morph new "Workaround. We do not have the window yet."
			initialExtent: self fullBounds extent
			world: ViActiveVivide world)
		grab: ((ViActiveVivide world == ActiveWorld
			and: [ActiveHand keyboardFocus notNil])
			and: [ActiveHand keyboardFocus isInSystemWindow not])