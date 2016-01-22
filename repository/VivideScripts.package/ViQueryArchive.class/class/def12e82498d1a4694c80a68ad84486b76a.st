definitions
def12e82498d1a4694c80a68ad84486b76a
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:flag | {
	#icon -> (ViIconServiceForEclipse doObject: flag reference). 
	#text -> ((ViLabelServiceForEclipse doObject: flag reference),
		' (', (ViLabelServiceForEclipse doObject: flag reference actualClass), ')')}]).
(#class -> ViQueryMapDefinition).
(#id -> #'12e82498-d1a4-694c-80a6-8ad84486b76a').
(#inputKind -> ViFlagComment).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 9:22:39 pm')})).
(#sourceCode -> '[:flag | {
	#icon -> (ViIconServiceForEclipse doObject: flag reference). 
	#text -> ((ViLabelServiceForEclipse doObject: flag reference),
		'' ('', (ViLabelServiceForEclipse doObject: flag reference actualClass), '')'')}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})