*vivide-layout
boundsInOwner: aRectangle

	self bounds = aRectangle ifTrue: [^ self].

	self withAllOwnersDo: [:m |
		"Assume that the world or a morph without layout policy allows for custom resizing of submorphs."
		((m owner == m world or: [m owner layoutPolicy isNil]) or: [m owner isNil])
			ifTrue: [
				m bounds: (m topLeft + aRectangle topLeft - self topLeft
					extent: m extent + aRectangle extent - self extent).
				m fullBounds.
				^ self]].