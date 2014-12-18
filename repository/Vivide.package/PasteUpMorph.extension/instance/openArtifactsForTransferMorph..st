*vivide
openArtifactsForTransferMorph: aTransferMorph

	^ (self showWindowForTransferMorph: aTransferMorph) in: [:wnds |
		| bounds |
		wnds first center: self currentEvent position.
		
		bounds :=((wnds collect: [:wnd | wnd fullBounds])
			reduce: [:b1 :b2 | b1 topLeft extent: (b1 width + b2 width) @ (b1 height max: b2 height)])
				translatedToBeWithin: (RealEstateAgent maximumUsableAreaInWorld: self).
		
		wnds first topLeft: bounds topLeft.
		
		"Align other windows next to the first one."
		wnds overlappingPairsDo: [:wnd1 :wnd2 |
			wnd2 topLeft: wnd1 topRight].
		
		^ wnds first]