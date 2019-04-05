definitions
defc99bb4e9b28c9049acf456b162369cbe
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | { #text -> ((SystemNavigation default allCallsOn: step id) count: [:ref | (ref actualClass includesBehavior: ViScriptArchive) not])  }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'c99bb4e9-b28c-9049-acf4-56b162369cbe').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 2:47:45 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | { #text -> ((SystemNavigation default allCallsOn: step id) count: [:ref | (ref actualClass includesBehavior: ViScriptArchive) not])  }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})