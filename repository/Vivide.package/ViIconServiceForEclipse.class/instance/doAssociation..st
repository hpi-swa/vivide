squeak - collections
doAssociation: assoc

	^ assoc key isBehavior
		ifTrue: [
			assoc key isMeta
				ifTrue: [ViEclipseIcons fieldPrivateStaticObjIcon]
				ifFalse: [ViEclipseIcons fieldPrivateObjIcon]]
		ifFalse: [ViIconService doObject: assoc]