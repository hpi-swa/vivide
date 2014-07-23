*vivide
openArtifactsForTransferMorph: aTransferMorph

	^ (self showWindowForTransferMorph: aTransferMorph) in: [:wnd |
		wnd
			center: self currentEvent position;
			bounds: (wnd bounds translatedToBeWithin:
				(RealEstateAgent maximumUsableAreaInWorld: self));
			yourself]