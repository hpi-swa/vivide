definitions
def8c0498e4ef4a7d409aa59449da21d72b
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:class | {
	ClassOrganizer allCategory -> class},
	(class organization categories collect: [:category | category -> class])]).
(#class -> ViQueryMapDefinition).
(#id -> #'8c0498e4-ef4a-7d40-9aa5-9449da21d72b').
(#inputKind -> ClassDescription).
(#mapType -> #each).
(#outputKind -> Association).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 4:28:07 pm')})).
(#sourceCode -> '[:class | {
	ClassOrganizer allCategory -> class},
	(class organization categories collect: [:category | category -> class])]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})