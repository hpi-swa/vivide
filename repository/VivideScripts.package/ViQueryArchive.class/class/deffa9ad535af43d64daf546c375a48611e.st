definitions
deffa9ad535af43d64daf546c375a48611e
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:class | {
	ClassOrganizer allCategory -> class},
	(class organization categories collect: [:category | category -> class])]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'fa9ad535-af43-d64d-af54-6c375a48611e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 4:28:07 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:class | {
	ClassOrganizer allCategory -> class},
	(class organization categories collect: [:category | category -> class])]]
		value: in) do: [:result | out addAll: result asList]]')})