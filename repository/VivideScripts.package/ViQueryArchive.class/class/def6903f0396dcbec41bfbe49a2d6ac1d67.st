definitions
def6903f0396dcbec41bfbe49a2d6ac1d67
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:box |
	{ #text -> box boxName.
	#icon -> ((UiSilkIcons lookup: box boxName) ifNil: [UiSilkIcons folderIcon scaledToDisplay]) }
	
	]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'6903f039-6dcb-ec41-bfbe-49a2d6ac1d67').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2018 8:57:51 am')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:box |
	{ #text -> box boxName.
	#icon -> ((UiSilkIcons lookup: box boxName) ifNil: [UiSilkIcons folderIcon scaledToDisplay]) }
	
	]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})