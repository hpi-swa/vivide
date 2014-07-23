as yet unclassified
doClassDescription: cls

	cls isTrait
		ifTrue: [^ ViEclipseIcons intObjIcon].

	(cls name includesSubstring: 'Abstract' caseSensitive: true)
		ifTrue: [^ ViEclipseIcons classAbstractObjIcon].

	cls methodsDo: [:m | m literalsDo: [:literal |
		(literal == #shouldBeImplemented
			or: [literal == #subclassResponsibility])
				ifTrue: [^ ViEclipseIcons classAbstractObjIcon "abstract class"]]].
	^ ViEclipseIcons classObjIcon