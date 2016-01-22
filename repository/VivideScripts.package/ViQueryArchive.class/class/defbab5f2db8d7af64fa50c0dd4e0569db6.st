definitions
defbab5f2db8d7af64fa50c0dd4e0569db6
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:step | #text -> (step category ifNotNil: [:lbl | ('<font color="#008800">', lbl, '</font>') asHtmlText])]).
(#class -> ViQueryMapDefinition).
(#id -> #'bab5f2db-8d7a-f64f-a50c-0dd4e0569db6').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 1:19:25 pm')})).
(#sourceCode -> '[:step | #text -> (step category ifNotNil: [:lbl | (''<font color="#008800">'', lbl, ''</font>'') asHtmlText])]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})