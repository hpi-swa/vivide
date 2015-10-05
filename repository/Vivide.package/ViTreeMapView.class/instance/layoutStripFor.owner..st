layouting
layoutStripFor: node owner: morph

	| vOffset nodes nodesLeft morphs ratios |
	nodes := (node nodes
		select: [:n | (n at: #weight) > 0])
		sorted: [:n1 :n2 | (n1 at: #weight) <= (n2 at: #weight)].
	
	nodesLeft := nodes copy.
	morphs := OrderedCollection new.
	
	nodes do: [:child | 
		child disconnectSignal: #modelReset from: self selector: #triggerReset. 
		self connect: child signal: #modelReset toSelector: #triggerReset].
		
	ratios := nodes collect: [:n | (n at: #weight) / (node at: #weight) asFloat].
	
	vOffset := 0.0.
	[nodesLeft notEmpty] whileTrue: [
		| avgSquareRatio max strip hOffset |
		max := ratios first.
		strip := {ratios first}.
		
		avgSquareRatio := 9999.0.
		(2 to: nodesLeft size) detect: [:limit |
			| current m | 
			current := ratios first: limit.
			m := current sum.
			
			(current collect: [:rat | (rat/m) / m max: m / (rat/m)]) average in: [:newAvgRatio |
				newAvgRatio < avgSquareRatio
					ifTrue: [ "Use this strip!"
						avgSquareRatio := newAvgRatio.
						strip := current.
						max := m.
						false]
					ifFalse: [true] ] ] ifNone: [].	

		hOffset := 0.0.
		strip do: [:ratio |
			morphs add: (ViTreeMapItemMorph new
				color: morph color;
				borderColor: morph color;
				layoutFrame: (LayoutFrame fractions: (
					hOffset @ vOffset corner: (hOffset + (ratio/max)) @ (vOffset + max)))
				yourself).
			hOffset := hOffset + (ratio/max)].

		nodesLeft := nodesLeft allButFirst: strip size.
		ratios := ratios allButFirst: strip size.
		vOffset := vOffset + max.
	].

	nodes with: morphs do: [:n :m |
		self updateSubmorphsFor: n owner: m].

	morph addAllMorphs: morphs reversed.
	morph computeSubmorphElevation.