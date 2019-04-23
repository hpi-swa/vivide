definitions
def64f812356954c14794470bb5de39f7e2
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:pkg | | result |
	result := OrderedCollection new.
	result addAll: pkg classes.
"	#(hasPreamble preamble hasPostscript postscript hasPreambleOfRemoval preambleOfRemoval hasPostscriptOfRemoval postscriptOfRemoval) pairsDo: [:check :script | (pkg perform: check) ifTrue: [result add: script -> (pkg perform: script)]]."
	result]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'64f81235-6954-c147-9447-0bb5de39f7e2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:45:26 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:pkg | | result |
	result := OrderedCollection new.
	result addAll: pkg classes.
"	#(hasPreamble preamble hasPostscript postscript hasPreambleOfRemoval preambleOfRemoval hasPostscriptOfRemoval postscriptOfRemoval) pairsDo: [:check :script | (pkg perform: check) ifTrue: [result add: script -> (pkg perform: script)]]."
	result]]
		value: in) do: [:result | out addAll: result asList]]')})