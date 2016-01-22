definitions
defad1b51e5029de247bbb0af3f31d87bd0
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:step :context | (context contents indexOf: step organization) == 2
	ifTrue: [{
		#text -> (ViLabelService doObject: step).
		#icon -> (ViIconService doObject: step)}]
	ifFalse: [#()]]).
(#class -> ViQueryMapDefinition).
(#id -> #'ad1b51e5-029d-e247-bbb0-af3f31d87bd0').
(#inputKind -> ViAbstractQueryPart).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 9:31:08 am')})).
(#sourceCode -> '[:step :context | (context contents indexOf: step organization) == 2
	ifTrue: [{
		#text -> (ViLabelService doObject: step).
		#icon -> (ViIconService doObject: step)}]
	ifFalse: [#()]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})