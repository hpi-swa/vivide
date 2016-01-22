definitions
def83108bd2fbfa9b49a141f65fbcf9adf4
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:flag | #text -> (flag comment ifNil: [('<i>\<', flag symbol, '\></i>') asHtmlText])]).
(#class -> ViQueryMapDefinition).
(#id -> #'83108bd2-fbfa-9b49-a141-f65fbcf9adf4').
(#inputKind -> ViFlagComment).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 6:56:36 pm').
(#labelColor -> '007F00')})).
(#sourceCode -> '[:flag | #text -> (flag comment ifNil: [(''<i>\<'', flag symbol, ''\></i>'') asHtmlText])]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})