definitions
def60d51cf039142045ae54eea3e1bab488
	<definition>

	^ (Dictionary newFrom: {
(#block -> [|result|
	result := OrderedCollection new.
	SystemNavigation allSelectorsAndMethodsDo: [:b :selector :method |
		(ViMethodVersion versionsOfMethod: method methodReference) size > 3
			ifTrue: [result add: method]].
	result]).
(#class -> ViQueryMapDefinition).
(#id -> #'60d51cf0-3914-2045-ae54-eea3e1bab488').
(#inputKind -> ProtoObject).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[|result|
	result := OrderedCollection new.
	SystemNavigation allSelectorsAndMethodsDo: [:b :selector :method |
		(ViMethodVersion versionsOfMethod: method methodReference) size > 3
			ifTrue: [result add: method]].
	result]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})