definitions
defdf93144e971cad43928647e02daa2a96
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:change | 
	change value associations collect: [:item | 
		item value -> (MethodReference
			class: ((Smalltalk classNamed: change key) ifNil: [UndefinedObject])
			selector: item key)]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'df93144e-971c-ad43-9286-47e02daa2a96').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '5 June 2014 4:59:33 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:change | 
	change value associations collect: [:item | 
		item value -> (MethodReference
			class: ((Smalltalk classNamed: change key) ifNil: [UndefinedObject])
			selector: item key)]]]
		value: in) do: [:result | out addAll: result asList]]')
})