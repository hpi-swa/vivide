as yet unclassified
updateCurrentQueryFor: someObjects

	| baseClasses appropriateQueries |	
	baseClasses := ViQueryChooser collectBaseClassesForContext: someObjects.
	
	appropriateQueries := self queries select: [:query |
		(query isGlobal not & someObjects notEmpty and: [baseClasses includes: query baseClass])
			or: [query isGlobal & someObjects isEmpty]].
	
	"Only change the current query if old query for former base class is not possible anymore."
	(self currentQuery isNil
			or: [(baseClasses includes: self currentQuery baseClass) not])
		ifTrue: [self currentQuery: (appropriateQueries
			ifEmpty: [nil] ifNotEmpty: [:aqueries | aqueries first])].