definitions
def29ef7ed7ae7b734e983d8f574ee9c654
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:orga | orga orderedSteps select: [:step | step isSpecial]]).
(#class -> ViQueryMapDefinition).
(#id -> #'29ef7ed7-ae7b-734e-983d-8f574ee9c654').
(#inputKind -> ViQueryOrganizer).
(#mapType -> #each).
(#outputKind -> ViQueryStep).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 2:43:44 pm')})).
(#sourceCode -> '[:orga | orga orderedSteps select: [:step | step isSpecial]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})