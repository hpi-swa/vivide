custom icons
signalOwnerChainIcon

	^ self icons
		at: #signalOwnerChain
		ifAbsentPut: [
			UiSilkIcons bulletFeedIcon collectColors: [:c |
				(c mixed: 0.0 with: (Color r: 11/255 g: 97/255 b: 164/255)) lighter lighter alpha: c alpha]]