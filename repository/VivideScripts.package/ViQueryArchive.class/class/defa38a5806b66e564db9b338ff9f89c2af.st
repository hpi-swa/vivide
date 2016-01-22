definitions
defa38a5806b66e564db9b338ff9f89c2af
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:assoc | assoc key in: [:timestamp |
	timestamp date = Date today
		ifTrue: [timestamp time print24]
		ifFalse: [(timestamp date printFormat: #(1 2 3 $- 1 1 2)), ', ', timestamp time print24]]]).
(#class -> ViQueryMapDefinition).
(#id -> #'a38a5806-b66e-564d-b9b3-38ff9f89c2af').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 6:08:11 pm')})).
(#sourceCode -> '[:assoc | assoc key in: [:timestamp |
	timestamp date = Date today
		ifTrue: [timestamp time print24]
		ifFalse: [(timestamp date printFormat: #(1 2 3 $- 1 1 2)), '', '', timestamp time print24]]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})