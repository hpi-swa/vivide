inspecting
explore: anObject label: aLabel

	VivideLight active ifNil: [^ super explore: anObject label: aLabel].
	^ self explore: anObject