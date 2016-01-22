definitions
defa5bc60d163c38c429039698a5f637754
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:pkg | | result |
	result := OrderedCollection new.
	result addAll: pkg classes.
	#(hasPreamble preamble hasPostscript postscript hasPreambleOfRemoval preambleOfRemoval hasPostscriptOfRemoval postscriptOfRemoval) pairsDo: [:check :script | (pkg perform: check) ifTrue: [result add: script -> (pkg perform: script)]].
	result]).
(#class -> ViQueryMapDefinition).
(#id -> #'a5bc60d1-63c3-8c42-9039-698a5f637754').
(#inputKind -> PackageInfo).
(#mapType -> #each).
(#outputKind -> ClassDescription).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:45:26 pm')})).
(#sourceCode -> '[:pkg | | result |
	result := OrderedCollection new.
	result addAll: pkg classes.
	#(hasPreamble preamble hasPostscript postscript hasPreambleOfRemoval preambleOfRemoval hasPostscriptOfRemoval postscriptOfRemoval) pairsDo: [:check :script | (pkg perform: check) ifTrue: [result add: script -> (pkg perform: script)]].
	result]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})