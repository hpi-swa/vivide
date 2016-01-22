definitions
def9b5abd1676eb5248b99e5ae7c8cce33b
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:stamp | #text -> ('<font color="#AAAAAA">{1}</font><br>{2}' format: {
	ViToolSet printRelativeTimeStamp: stamp key.
	(stamp value description withNoLineLongerThan: 35) escapeHtmlText}) asHtmlText]).
(#class -> ViQueryMapDefinition).
(#id -> #'9b5abd16-76eb-5248-b99e-5ae7c8cce33b').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '16 November 2013 4:58:02 pm')})).
(#sourceCode -> '[:stamp | #text -> (''<font color="#AAAAAA">{1}</font><br>{2}'' format: {
	ViToolSet printRelativeTimeStamp: stamp key.
	(stamp value description withNoLineLongerThan: 35) escapeHtmlText}) asHtmlText]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})