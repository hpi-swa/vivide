layouting
layoutSliceAndDiceFor: node owner: morph

	| offset |
	offset := 0.0.
	node nodes do: [:child |
		| rect ratio |
		child disconnectSignal: #modelReset from: self selector: #triggerReset. 
		self connect: child signal: #modelReset toSelector: #triggerReset.
		
		rect := ViTreeMapItemMorph new
			color: morph color;
			cornerStyle: #rounded;
			layoutPolicy: ProportionalLayout new;
			clipSubmorphs: true;
			yourself.
		ratio := (child at: #weight) / (node at: #weight) asFloat.
		node depth even
			ifTrue: [ rect layoutFrame: (LayoutFrame fractions: (
				offset @ 0 corner: (offset + ratio) @ 1))]
			ifFalse: [ rect layoutFrame: (LayoutFrame fractions: (
				0 @ offset corner: 1 @ (offset + ratio)))].
		offset := offset + ratio.
		self updateSubmorphsFor: child owner: rect.
		morph addMorphBack: rect].