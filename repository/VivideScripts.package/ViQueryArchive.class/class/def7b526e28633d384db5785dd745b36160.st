definitions
def7b526e28633d384db5785dd745b36160
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:step | #text -> (step definition ifNotNil: [:def | def category ifNotNil: [:lbl | ('<font color="#000088">', lbl, '</font>') asHtmlText]])]).
(#class -> ViQueryMapDefinition).
(#id -> #'7b526e28-633d-384d-b578-5dd745b36160').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 1:18:56 pm')})).
(#sourceCode -> '[:step | #text -> (step definition ifNotNil: [:def | def category ifNotNil: [:lbl | (''<font color="#000088">'', lbl, ''</font>'') asHtmlText]])]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})