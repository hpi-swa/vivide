definitions
def64a657edd4dfe146955a7dfe7e5570db
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:navi |
	OrderedCollection new in: [:s| | max |
		max := 0.
		navi allBehaviorsDo: [:b |
			s add: {b instVarNames size. nil. b}.
			max := max max: s last first].
		
		s do: [:each | each at: 2 put: max].
		s]]).
(#class -> ViQueryMapDefinition).
(#id -> #'64a657ed-d4df-e146-955a-7dfe7e5570db').
(#inputKind -> SystemNavigation).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 January 2014 4:26:25 pm')})).
(#sourceCode -> '[:navi |
	OrderedCollection new in: [:s| | max |
		max := 0.
		navi allBehaviorsDo: [:b |
			s add: {b instVarNames size. nil. b}.
			max := max max: s last first].
		
		s do: [:each | each at: 2 put: max].
		s]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})