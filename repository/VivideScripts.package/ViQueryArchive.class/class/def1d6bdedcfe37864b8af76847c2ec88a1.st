definitions
def1d6bdedcfe37864b8af76847c2ec88a1
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:entry | {
	#text -> ('{1}<br><font color="#777777">{2}<br>{3} Bytes</font>'
		format: {
			entry name.
			ViToolSet printRelativeTimeStamp: entry creationDateAndTime asTimeStamp.
			entry fileSize}) asHtmlText.
	#icon -> ((ViThumbnailCache default thumbnailForEntry: entry size: 100@100) clippedToSize: 105@105)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'1d6bdedc-fe37-864b-8af7-6847c2ec88a1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:entry | {
	#text -> (''{1}<br><font color="#777777">{2}<br>{3} Bytes</font>''
		format: {
			entry name.
			ViToolSet printRelativeTimeStamp: entry creationDateAndTime asTimeStamp.
			entry fileSize}) asHtmlText.
	#icon -> ((ViThumbnailCache default thumbnailForEntry: entry size: 100@100) clippedToSize: 105@105)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})