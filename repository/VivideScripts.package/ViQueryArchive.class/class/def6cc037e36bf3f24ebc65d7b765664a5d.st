definitions
def6cc037e36bf3f24ebc65d7b765664a5d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:class :offset | "See TestRunner >> classList"
	| ident |
	ident := String 
		new: 2 * (0 max: class allSuperclasses size - offset contents)
		withAll: $ .

	#text -> (
		class isAbstract
			ifFalse: [ ident , class name ]
			ifTrue: [ 
				ident asText , class name asText 
					addAttribute: TextEmphasis italic;
					yourself ]
	)]).
(#class -> ViQueryMapDefinition).
(#id -> #'6cc037e3-6bf3-f24e-bc65-d7b765664a5d').
(#inputKind -> Behavior).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 11:57:29 am')})).
(#sourceCode -> '[:class :offset | "See TestRunner >> classList"
	| ident |
	ident := String 
		new: 2 * (0 max: class allSuperclasses size - offset contents)
		withAll: $ .

	#text -> (
		class isAbstract
			ifFalse: [ ident , class name ]
			ifTrue: [ 
				ident asText , class name asText 
					addAttribute: TextEmphasis italic;
					yourself ]
	)]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})