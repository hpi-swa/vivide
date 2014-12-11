inspecting
inspect: anObject label: aLabel

	VivideLight active ifNil: [^ super inspect: anObject label: aLabel].
	^ self explore: anObject