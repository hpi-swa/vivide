definitions
def298c9fc0b1c0174e8db47f9f8cee2ea6
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:class | {
	#balloonText -> class name.
	#icon -> (Morph new
		color: ((class inheritsFrom: TestCase)
			ifTrue: [Color green muchDarker]
			ifFalse: [Color blue paler]);
		extent: 
			((class instVarNames size * 2) max: 1) @
			((class methodDict values size * 1) max: 1)) }]).
(#class -> ViQueryMapDefinition).
(#id -> #'298c9fc0-b1c0-174e-8db4-7f9f8cee2ea6').
(#inputKind -> ClassDescription).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 August 2014 1:19:01 pm')})).
(#sourceCode -> '[:class | {
	#balloonText -> class name.
	#icon -> (Morph new
		color: ((class inheritsFrom: TestCase)
			ifTrue: [Color green muchDarker]
			ifFalse: [Color blue paler]);
		extent: 
			((class instVarNames size * 2) max: 1) @
			((class methodDict values size * 1) max: 1)) }]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})