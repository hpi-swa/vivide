definitions
def809654dfab07304b81aaeee22edfb970
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:mcp | {
	#text -> (ViLabelServiceForEclipse new doMCPackage: mcp).
	#icon -> (ViIconServiceForEclipse new doMCPackage: mcp)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'809654df-ab07-304b-81aa-eee22edfb970').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 5:13:59 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:mcp | {
	#text -> (ViLabelServiceForEclipse new doMCPackage: mcp).
	#icon -> (ViIconServiceForEclipse new doMCPackage: mcp)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})