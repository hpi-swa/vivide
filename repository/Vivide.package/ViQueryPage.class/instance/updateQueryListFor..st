updating
updateQueryListFor: someObjects
	"Set filter."

	| baseClasses |	
	baseClasses := ViQueryChooser collectBaseClassesForContext: someObjects.
	
	"Select appropriate queries."
	self queryChooser selectBlock: [:query | query nextLabel notNil
		and: [(query isGlobal not & someObjects notEmpty and: [baseClasses includes: query baseClass])
			or: [query isGlobal & someObjects isEmpty]]].
	
	"Only change the current query if old query for former base class is not possible anymore."
	(self currentQuery isNil
			or: [(baseClasses includes: self currentQuery baseClass) not
				and: [self currentQuery isRegistered]])
		ifTrue: [self currentQuery: self queryChooser firstVisibleQuery].