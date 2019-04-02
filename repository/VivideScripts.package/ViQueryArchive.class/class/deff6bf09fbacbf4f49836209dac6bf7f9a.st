definitions
deff6bf09fbacbf4f49836209dac6bf7f9a
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | [(Smalltalk globals instVarNamed: #bindings) associations select: [:assoc |
		assoc value isBehavior not]] value in: [:result |
	out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'f6bf09fb-acbf-4f49-8362-09dac6bf7f9a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 10:06:57 am')})).
(#sourceCode -> '[:in :out | [(Smalltalk globals instVarNamed: #bindings) associations select: [:assoc |
		assoc value isBehavior not]] value in: [:result |
	out addAll: result asList]]')})