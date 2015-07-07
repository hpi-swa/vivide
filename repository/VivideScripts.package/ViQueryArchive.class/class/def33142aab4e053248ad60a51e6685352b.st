definitions
def33142aab4e053248ad60a51e6685352b
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'21 July 2014 9:38:55 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'33142aab-4e05-3248-ad60-a51e6685352b'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:method | #text -> (method getSource asString lines first in: [:label |
	| node text |
	node := RBParser parseMethod: label.
	text := label asText.
	
	node arguments do: [:arg |
		text
			addAttribute: (TextColor color: (Color fromString: ''#555794''))
			from: arg token start
			to: arg token stop].
		
	text])]'); add: (#mapType->#each); add: (#block->[:method | #text -> (method getSource asString lines first in: [:label |
	| node text |
	node := RBParser parseMethod: label.
	text := label asText.
	
	node arguments do: [:arg |
		text
			addAttribute: (TextColor color: (Color fromString: '#555794'))
			from: arg token start
			to: arg token stop].
		
	text])]); yourself)