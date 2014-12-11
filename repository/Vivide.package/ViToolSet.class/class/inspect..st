inspecting
inspect: anObject

	VivideLight active ifNil: [^ super inspect: anObject].
	^ self explore: anObject