definitions
defa5bc60d163c38c429039698a5f637754
	<definition>

	^ ((Dictionary new) add: (#inputKind->PackageInfo); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'13 September 2013 7:45:26 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->ClassDescription); add: (#id->#'a5bc60d1-63c3-8c42-9039-698a5f637754'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:pkg | | result |
	result := OrderedCollection new.
	result addAll: pkg classes.
	#(hasPreamble preamble hasPostscript postscript hasPreambleOfRemoval preambleOfRemoval hasPostscriptOfRemoval postscriptOfRemoval) pairsDo: [:check :script | (pkg perform: check) ifTrue: [result add: script -> (pkg perform: script)]].
	result]'); add: (#mapType->#each); add: (#block->[:pkg | | result |
	result := OrderedCollection new.
	result addAll: pkg classes.
	#(hasPreamble preamble hasPostscript postscript hasPreambleOfRemoval preambleOfRemoval hasPostscriptOfRemoval postscriptOfRemoval) pairsDo: [:check :script | (pkg perform: check) ifTrue: [result add: script -> (pkg perform: script)]].
	result]); yourself)