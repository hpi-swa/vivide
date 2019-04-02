definitions
def6dd427e29e4eb745bda4948a2487eccb
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:pkg | | result |
	result := OrderedCollection new.
	result addAll: pkg classes.
	#(hasPreamble preamble hasPostscript postscript hasPreambleOfRemoval preambleOfRemoval hasPostscriptOfRemoval postscriptOfRemoval) pairsDo: [:check :script | (pkg perform: check) ifTrue: [result add: script -> (pkg perform: script)]].
	result]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'6dd427e2-9e4e-b745-bda4-948a2487eccb').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:45:26 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:pkg | | result |
	result := OrderedCollection new.
	result addAll: pkg classes.
	#(hasPreamble preamble hasPostscript postscript hasPreambleOfRemoval preambleOfRemoval hasPostscriptOfRemoval postscriptOfRemoval) pairsDo: [:check :script | (pkg perform: check) ifTrue: [result add: script -> (pkg perform: script)]].
	result]]
		value: in) do: [:result | out addAll: result asList]]')})