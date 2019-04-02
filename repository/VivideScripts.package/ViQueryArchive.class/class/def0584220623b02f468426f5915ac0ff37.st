definitions
def0584220623b02f468426f5915ac0ff37
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:classes | classes select: [:cls | cls organization classComment isEmpty]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'05842206-23b0-2f46-8426-f5915ac0ff37').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:46:24 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:classes | classes select: [:cls | cls organization classComment isEmpty]] value: in)]')})