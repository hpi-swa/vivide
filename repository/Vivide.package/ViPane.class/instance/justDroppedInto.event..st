as yet unclassified
justDroppedInto: aMorph event: anEvent

	(self decorationNamed: #window) ifNil: [^super justDroppedInto: aMorph event: anEvent].

	self decoration window hasDropShadow: Preferences menuAppearance3d. "See #startDragFromLabel:."

	(Project uiManager openToolsAttachedToMouseCursor and: (self hasProperty: #initialDrop))
		ifTrue: [
			self removeProperty: #initialDrop.
			(self decoration window submorphs detect: [:m | m isKindOf: BottomRightGripMorph] ifNone: [])
				ifNotNil: [:grip | 
					grip referencePoint: anEvent position.
					anEvent hand newMouseFocus: grip.]].
			
	^super justDroppedInto: aMorph event: anEvent