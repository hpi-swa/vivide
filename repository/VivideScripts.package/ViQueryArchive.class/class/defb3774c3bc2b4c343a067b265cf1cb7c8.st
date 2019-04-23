definitions
defb3774c3bc2b4c343a067b265cf1cb7c8
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:view |
	{
	#icon -> ((ViIconService doObject: view) ifNil: [UiFugueIcons scriptCodeIcon]).
	#text -> (ViLabelService doObject: view).
	}, (view isMorph ifFalse: [{}]ifTrue: [{#selectedLater -> [[view addHalo]]}])]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'b3774c3b-c2b4-c343-a067-b265cf1cb7c8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '1 June 2015 1:41:53 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:view |
	{
	#icon -> ((ViIconService doObject: view) ifNil: [UiFugueIcons scriptCodeIcon]).
	#text -> (ViLabelService doObject: view).
	}, (view isMorph ifFalse: [{}]ifTrue: [{#selectedLater -> [[view addHalo]]}])]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})