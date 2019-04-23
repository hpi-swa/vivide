definitions
defa5c3d962f79dca4ab3f14ec8b8ee6b26
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:entry | {
	#text -> entry name.
	#icon -> (ViThumbnailCache default thumbnailForEntry: entry size: 100@100)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'a5c3d962-f79d-ca4a-b3f1-4ec8b8ee6b26').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:entry | {
	#text -> entry name.
	#icon -> (ViThumbnailCache default thumbnailForEntry: entry size: 100@100)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})