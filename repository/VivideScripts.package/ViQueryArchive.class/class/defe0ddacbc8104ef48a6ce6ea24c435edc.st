definitions
defe0ddacbc8104ef48a6ce6ea24c435edc
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:pkg | ((pkg packageName beginsWith: 'ConfigurationOf') or: [pkg packageName beginsWith: 'BaselineOf'])
	ifTrue: ['3) Metacello Configurations']
	ifFalse: [pkg workingCopy repositoryGroup repositories in: [:repos | 
		(repos anySatisfy: [:rep | rep description includesSubString: 'hpi'])
			ifTrue: ['1) HPI Projects'] ifFalse: [
		(repos anySatisfy: [:rep | rep description includesSubString: 'source.squeak.org'])
			ifTrue: ['2) Squeak'] ifFalse: [
				'3) Other Packages']]]]]).
(#class -> ViQueryMapDefinition).
(#id -> #'e0ddacbc-8104-ef48-a6ce-6ea24c435edc').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:pkg | ((pkg packageName beginsWith: ''ConfigurationOf'') or: [pkg packageName beginsWith: ''BaselineOf''])
	ifTrue: [''3) Metacello Configurations'']
	ifFalse: [pkg workingCopy repositoryGroup repositories in: [:repos | 
		(repos anySatisfy: [:rep | rep description includesSubString: ''hpi''])
			ifTrue: [''1) HPI Projects''] ifFalse: [
		(repos anySatisfy: [:rep | rep description includesSubString: ''source.squeak.org''])
			ifTrue: [''2) Squeak''] ifFalse: [
				''3) Other Packages'']]]]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})