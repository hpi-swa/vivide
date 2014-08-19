definitions
def298c9fc0b1c0174e8db47f9f8cee2ea6
	<definition>

	^ ((Dictionary new) add: (#inputKind->ClassDescription); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'14 August 2014 1:19:01 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'298c9fc0-b1c0-174e-8db4-7f9f8cee2ea6'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:class | {
	#balloonText -> class name.
	#icon -> (Morph new
		color: ((class inheritsFrom: TestCase)
			ifTrue: [Color green muchDarker]
			ifFalse: [Color blue paler]);
		extent: 
			((class instVarNames size * 2) max: 1) @
			((class methodDict values size * 1) max: 1)) }]'); add: (#mapType->#each); add: (#block->[:class | {
	#balloonText -> class name.
	#icon -> (Morph new
		color: ((class inheritsFrom: TestCase)
			ifTrue: [Color green muchDarker]
			ifFalse: [Color blue paler]);
		extent: 
			((class instVarNames size * 2) max: 1) @
			((class methodDict values size * 1) max: 1)) }]); yourself)