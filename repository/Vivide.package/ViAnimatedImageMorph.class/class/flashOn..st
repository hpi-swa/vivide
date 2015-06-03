as yet unclassified
flashOn: aMorph

	Project current addDeferredUIMessage: [
		Morph new in: [:highlight |
			highlight
				color: (Color gray: 0.85);
				bounds: aMorph boundsInWorld;
				openInWorld;
				fadeOutThen: [highlight delete]]].