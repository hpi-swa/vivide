definitions
def7c98d44331302d47b541036f091ffa97
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:pkg | ((pkg packageName beginsWith: 'ConfigurationOf') or: [pkg packageName beginsWith: 'BaselineOf'])
	ifTrue: ['3) Metacello Configurations']
	ifFalse: [pkg workingCopy repositoryGroup repositories in: [:repos | 
		(repos anySatisfy: [:rep | rep description includesSubString: 'hpi'])
			ifTrue: ['1) HPI Projects'] ifFalse: [
		(repos anySatisfy: [:rep | rep description includesSubString: 'source.squeak.org'])
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
		(repos anySatisfy: [:rep | rep description includesSubString: ''hpi''])
			ifTrue: [''1) HPI Projects''] ifFalse: [
		(repos anySatisfy: [:rep | rep description includesSubString: ''source.squeak.org''])
			ifTrue: [''2) Squeak''] ifFalse: [
				''3) Other Packages'']]]]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})