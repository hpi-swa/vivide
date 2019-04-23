definitions
def821a5cd981495a4484c8b57a49837356
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:class | "See TestRunner >> findCategories"
	| visible |
	visible := Set new.
	class withAllSubclassesDo: [ :each |
		each category ifNotNil: [ :category |
			visible add: category ] ].
	Array streamContents: [ :stream |
		Smalltalk organization categories do: [ :each |
			(visible includes: each)
				ifTrue: [ stream nextPut: each ] ] ] ]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'821a5cd9-8149-5a44-84c8-b57a49837356').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 11:22:16 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:class | "See TestRunner >> findCategories"
	| visible |
	visible := Set new.
	class withAllSubclassesDo: [ :each |
		each category ifNotNil: [ :category |
			visible add: category ] ].
	Array streamContents: [ :stream |
		Smalltalk organization categories do: [ :each |
			(visible includes: each)
				ifTrue: [ stream nextPut: each ] ] ] ]]
		value: in) do: [:result | out addAll: result asList]]')})