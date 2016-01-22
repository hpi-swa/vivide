definitions
def33142aab4e053248ad60a51e6685352b
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:method | #text -> (method getSource asString lines first in: [:label |
	| node text |
	node := RBParser parseMethod: label.
	text := label asText.
	
	node arguments do: [:arg |
		text
			addAttribute: (TextColor color: (Color fromString: '#555794'))
			from: arg token start
			to: arg token stop].
		
	text])]).
(#class -> ViQueryMapDefinition).
(#id -> #'33142aab-4e05-3248-ad60-a51e6685352b').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 July 2014 9:38:55 am')})).
(#sourceCode -> '[:method | #text -> (method getSource asString lines first in: [:label |
	| node text |
	node := RBParser parseMethod: label.
	text := label asText.
	
	node arguments do: [:arg |
		text
			addAttribute: (TextColor color: (Color fromString: ''#555794''))
			from: arg token start
			to: arg token stop].
		
	text])]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})