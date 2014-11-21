layout
layout: morph in: bounds

	morph submorphs ifEmpty: [^ self].
	"morph submorphs size = 1 ifTrue: [
		morph submorphs first bounds: morph bounds.
		^ self]."
			
	isLayouting == true ifTrue: [^ self].
	
	isLayouting := true.
	
	activeMorph := morph submorphs
		detect: [:m | (m instVarNamed: #fullBounds) isNil]
		ifNone: [].
	
	"Transcript cr; show: 'Active morph: ', activeMorph asString."
		
"	Transcript cr; show: (morph instVarNamed: #fullBounds).  "
	"Check whether a submorph change triggerd the re-layouting of the given morph or whether the given morph itself was resized."
	activeMorph
		ifNotNil: [self shrinkWrap: morph from: bounds]
		ifNil: [self resize: morph in: bounds].

	activeMorph := nil.
	isLayouting := false.