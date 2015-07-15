as yet unclassified
updateSubmorphsFor: node owner: morph

	| offset |
	self configureSubmorph: morph forNode: node. 
	
	node hasChildren ifFalse: [^ self].
"	(morph layoutFrame bottomFraction - morph layoutFrame topFraction) < 0.01 ifTrue: [^ self].
	(morph layoutFrame rightFraction - morph layoutFrame leftFraction) < 0.01 ifTrue: [^ self]."
"	morph width < 5 ifTrue: [^ self].
	morph height < 5 ifTrue: [^ self].
"
	offset := 0.0.
	node nodes do: [:child |
		| rect ratio |
		child disconnectSignal: #modelReset from: self selector: #triggerReset. 
		self connect: child signal: #modelReset toSelector: #triggerReset.
		
		rect := Morph new
			color: morph color;
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