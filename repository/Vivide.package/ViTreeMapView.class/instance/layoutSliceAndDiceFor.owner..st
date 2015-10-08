layouting
layoutSliceAndDiceFor: node owner: morph

	| offset nodes |
	nodes := node nodes select: [:n | (n at: #weight) > 0].
	self sortByWeight ifTrue: [
		nodes := nodes sorted: [:n1 :n2 | (n1 at: #weight) <= (n2 at: #weight)]].
	
	offset := 0.0.
	nodes do: [:child |
		| rect ratio |
		child disconnectSignal: #modelReset from: self selector: #triggerReset. 
		self connect: child signal: #modelReset toSelector: #triggerReset.
		
		rect := ViTreeMapItemMorph new
			color: morph color;
			borderColor: morph color;
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