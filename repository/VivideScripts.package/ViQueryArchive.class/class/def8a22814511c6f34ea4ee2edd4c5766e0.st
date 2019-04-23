definitions
def8a22814511c6f34ea4ee2edd4c5766e0
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | [| result |
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
		vars asSet]) asSet asOrderedCollection] value in: [:result |
	out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'8a228145-11c6-f34e-a4ee-2edd4c5766e0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | [| result |
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
		vars asSet]) asSet asOrderedCollection] value in: [:result |
	out addAll: result asList]]')})