definitions
def957368fb669b564583afb1ec12b7526e
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'957368fb-669b-5645-83af-b1ec12b7526e'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:method | #text -> (method isTestMethod not & method hasMethodExtension
	ifTrue: [method methodExtension tests size]
	ifFalse: [''<font color="#FF0000">not tested</font>'' asHtmlText])]'); add: (#mapType->#each); add: (#block->[:method | #text -> (method isTestMethod not & method hasMethodExtension
	ifTrue: [method methodExtension tests size]
	ifFalse: ['<font color="#FF0000">not tested</font>' asHtmlText])]); yourself)