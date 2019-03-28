definitions
def9be3ea3b0a85d04db5dd8b21b3c5fb1d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:classes | classes gather: [:cls | {cls withAllSuperclasses. cls} asTuples]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'9be3ea3b-0a85-d04d-b5dd-8b21b3c5fb1d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 May 2018 4:36:50 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:classes | classes gather: [:cls | {cls withAllSuperclasses. cls} asTuples]] value: in)]')})