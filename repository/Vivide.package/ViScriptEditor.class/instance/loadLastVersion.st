as yet unclassified
loadLastVersion

	| lastDefinition |
	
	self flag: #todo:. "Step versions resp. its properties."
	(ViScriptVersion versionsOfMethod: self object definition referenceInArchive) in: [:versions | 
		versions size > 1
			ifFalse: [^ self]
			ifTrue: [lastDefinition := versions second]].
		
	self object definition mergeFromDictionary: lastDefinition asDictionary.
	lastDefinition fileIn.