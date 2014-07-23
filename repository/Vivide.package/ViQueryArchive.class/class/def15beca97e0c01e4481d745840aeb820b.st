definitions
def15beca97e0c01e4481d745840aeb820b
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'15beca97-e0c0-1e44-81d7-45840aeb820b'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[| result |
	result := OrderedCollection new.
	SystemNavigation allSelectorsAndMethodsDo: [:b :s :m |
		(m hasLiteral: #whileTrue:) ifTrue: [result add: m]].
	(result gather: [:method | | node vars next |
		node := RBParser parseMethod: method getSource asString.
		vars := Set new.
		next := OrderedCollection new.
		next addAll: node children.
		[next notEmpty] whileTrue: [
			next removeFirst in: [:n |
				n isVariable ifTrue: [vars add: n name].
				next addAll: n children]].
		vars asSet]) asSet asOrderedCollection]'); add: (#mapType->#all); add: (#block->[| result |
	result := OrderedCollection new.
	SystemNavigation allSelectorsAndMethodsDo: [:b :s :m |
		(m hasLiteral: #whileTrue:) ifTrue: [result add: m]].
	(result gather: [:method | | node vars next |
		node := RBParser parseMethod: method getSource asString.
		vars := Set new.
		next := OrderedCollection new.
		next addAll: node children.
		[next notEmpty] whileTrue: [
			next removeFirst in: [:n |
				n isVariable ifTrue: [vars add: n name].
				next addAll: n children]].
		vars asSet]) asSet asOrderedCollection]); yourself)