steps
step3cce12f6e3d55b4082faff0f97f9844c
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:pkg | ((pkg packageName beginsWith: 'ConfigurationOf') or: [pkg packageName beginsWith: 'BaselineOf'])
	ifTrue: ['3) Metacello Configurations']
	ifFalse: [pkg workingCopy repositoryGroup repositories in: [:repos | 
		(repos anySatisfy: [:rep | rep description includesSubstring: 'hpi'])
			ifTrue: ['1) HPI Projects'] ifFalse: [
		(repos anySatisfy: [:rep | rep description includesSubstring: 'source.squeak.org'])
			ifTrue: ['2) Squeak'] ifFalse: [
				'3) Other Packages']]]]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'7c98d443-3130-2d47-b541-036f091ffa97').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:pkg | ((pkg packageName beginsWith: ''ConfigurationOf'') or: [pkg packageName beginsWith: ''BaselineOf''])
	ifTrue: [''3) Metacello Configurations'']
	ifFalse: [pkg workingCopy repositoryGroup repositories in: [:repos | 
		(repos anySatisfy: [:rep | rep description includesSubstring: ''hpi''])
			ifTrue: [''1) HPI Projects''] ifFalse: [
		(repos anySatisfy: [:rep | rep description includesSubstring: ''source.squeak.org''])
			ifTrue: [''2) Squeak''] ifFalse: [
				''3) Other Packages'']]]]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'7c98d443-3130-2d47-b541-036f091ffa97').
(#iconCode -> 'nil').
(#id -> #'3cce12f6-e3d5-5b40-82fa-ff0f97f9844c').
(#isProperty -> false).
(#label -> nil).
(#next -> #'8b960b66-9ca1-c54b-bae0-ba8e5375c1f7').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#priority -> 1080)
}))
})