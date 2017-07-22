*vivide-layout
extentInOwner: aPoint
	"If this morph's extent is controlled by its owner, resize the owner to make this morph have the new size."
	
	(self bounds extent closeTo: aPoint) ifTrue: [^ self].
	
	self withAllOwnersDo: [:m |
		"Assume that the world or a morph without layout policy allows for custom resizing of submorphs."
		(((((m owner == m world or: [m owner layoutPolicy isNil]) or: [m owner isNil])
			or: [m owner layoutPolicy isKindOf: ViConstraintLayout])
			or: [m owner layoutPolicy isKindOf: ViVerticalLayout])
			or: [m owner layoutPolicy isTableLayout])
			ifTrue: [
				m extent: m extent + (aPoint - self extent).
				"m fullBounds."
				^ self]].