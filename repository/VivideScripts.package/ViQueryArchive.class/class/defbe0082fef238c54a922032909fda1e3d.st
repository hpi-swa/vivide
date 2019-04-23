definitions
defbe0082fef238c54a922032909fda1e3d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | [|result|
	result := OrderedCollection new.
	SystemNavigation allSelectorsAndMethodsDo: [:b :selector :method |
		(ViMethodVersion versionsOfMethod: method methodReference) size > 3
			ifTrue: [result add: method]].
	result] value in: [:result |
	out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'be0082fe-f238-c54a-9220-32909fda1e3d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | [|result|
	result := OrderedCollection new.
	SystemNavigation allSelectorsAndMethodsDo: [:b :selector :method |
		(ViMethodVersion versionsOfMethod: method methodReference) size > 3
			ifTrue: [result add: method]].
	result] value in: [:result |
	out addAll: result asList]]')})