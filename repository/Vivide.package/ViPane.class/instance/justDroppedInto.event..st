as yet unclassified
justDroppedInto: aMorph event: anEvent

	(self decorationNamed: #window) ifNil: [^super justDroppedInto: aMorph event: anEvent].

	self activate; hasDropShadow: true.

	(Project uiManager openToolsAttachedToMouseCursor and: (self hasProperty: #initialDrop))
		ifTrue: [
			self removeProperty: #initialDrop.
			(self decoration window submorphs detect: [:m | m isKindOf: BottomRightGripMorph] ifNone: [])
				ifNotNil: [:grip | 
					grip referencePoint: anEvent position.
					anEvent hand newMouseFocus: grip.]].
			
	^super justDroppedInto: aMorph event: anEvent