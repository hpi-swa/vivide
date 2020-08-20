*vivide
openArtifactsForTransferMorph: aTransferMorph

	^ (self showWindowForTransferMorph: aTransferMorph) in: [:panes |
		| bounds |
		panes first center: self currentEvent position.
		
		bounds :=((panes collect: [:wnd | wnd fullBounds])
			reduce: [:b1 :b2 | b1 topLeft extent: (b1 width + b2 width) @ (b1 height max: b2 height)])
				translatedToBeWithin: (RealEstateAgent maximumUsableAreaInWorld: self).
		
		panes first topLeft: bounds topLeft.
		
		"Align other windows next to the first one."
		panes overlappingPairsDo: [:wnd1 :wnd2 |
			wnd2 topLeft: wnd1 topRight].
		
		self flag: #compatibility.
		panes do: [:pane | pane isPane ifTrue: [pane translateToShowDecorations]].
		
		^ panes first]