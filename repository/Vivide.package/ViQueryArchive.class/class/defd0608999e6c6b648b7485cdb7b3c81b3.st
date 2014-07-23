definitions
defd0608999e6c6b648b7485cdb7b3c81b3
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'d0608999-e6c6-b648-b748-5cdb7b3c81b3'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:obj |
	obj value isDictionary
		ifTrue: [obj value associations]
		ifFalse: [(((obj value isCollection
				and: [obj value isSequenceable])
				and: [obj value isCompiledMethod not])
				and: [obj value isString not])
			ifTrue: [obj value withIndexCollect: [:ea :idx | idx -> ea]]
			ifFalse: [
				"Fallback for all other objects."
				obj value class allInstVarNames collect: [:nm |
					nm -> (obj value instVarNamed: nm)]]]]'); add: (#mapType->#each); add: (#block->[:obj |
	obj value isDictionary
		ifTrue: [obj value associations]
		ifFalse: [(((obj value isCollection
				and: [obj value isSequenceable])
				and: [obj value isCompiledMethod not])
				and: [obj value isString not])
			ifTrue: [obj value withIndexCollect: [:ea :idx | idx -> ea]]
			ifFalse: [
				"Fallback for all other objects."
				obj value class allInstVarNames collect: [:nm |
					nm -> (obj value instVarNamed: nm)]]]]); yourself)