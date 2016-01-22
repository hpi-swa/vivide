definitions
def1db1df87dcb92542b17bbc902869ba5d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:navi | navi allClasses collect: [:cls | (cls theMetaClass selectors
	detect: [:s | #(uniqueInstance instance default main current) includes: s]
	ifNone: []) ifNotNil: [:s | [(MethodReference class: cls theMetaClass selector: s) -> (cls perform: s)] on: Error do: []]]
		thenSelect: [:obj | obj value notNil]]).
(#class -> ViQueryMapDefinition).
(#id -> #'1db1df87-dcb9-2542-b17b-bc902869ba5d').
(#inputKind -> SystemNavigation).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 5:12:19 pm')})).
(#sourceCode -> '[:navi | navi allClasses collect: [:cls | (cls theMetaClass selectors
	detect: [:s | #(uniqueInstance instance default main current) includes: s]
	ifNone: []) ifNotNil: [:s | [(MethodReference class: cls theMetaClass selector: s) -> (cls perform: s)] on: Error do: []]]
		thenSelect: [:obj | obj value notNil]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})