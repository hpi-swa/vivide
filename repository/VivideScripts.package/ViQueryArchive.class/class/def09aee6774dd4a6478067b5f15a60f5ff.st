definitions
def09aee6774dd4a6478067b5f15a60f5ff
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:method | ((method selector includesSubstring: #small caseSensitive: false)
	or: [method selector includesSubstring: #bullet caseSensitive: false])
		ifTrue: ['1) Small Icons'] ifFalse: ['2) Regular Icons']]).
(#class -> ViQueryMapDefinition).
(#id -> #'09aee677-4dd4-a647-8067-b5f15a60f5ff').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:method | ((method selector includesSubstring: #small caseSensitive: false)
	or: [method selector includesSubstring: #bullet caseSensitive: false])
		ifTrue: [''1) Small Icons''] ifFalse: [''2) Regular Icons'']]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})