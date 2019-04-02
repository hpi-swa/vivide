definitions
def0a1a8d7fc69cf24895d3e826729b8629
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | 
	| receiverClass |
	receiverClass := obj instVarNamed: #class.
	{#text -> ((ViObjectOriginService doObject: obj method), 
		(receiverClass = obj method methodClass 
			ifTrue: ['']
			ifFalse: [' (', receiverClass theNonMetaClass name, ')']))}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'0a1a8d7f-c69c-f248-95d3-e826729b8629').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | 
	| receiverClass |
	receiverClass := obj instVarNamed: #class.
	{#text -> ((ViObjectOriginService doObject: obj method), 
		(receiverClass = obj method methodClass 
			ifTrue: ['''']
			ifFalse: ['' ('', receiverClass theNonMetaClass name, '')'']))}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})