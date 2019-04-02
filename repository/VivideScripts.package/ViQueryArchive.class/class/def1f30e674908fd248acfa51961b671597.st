definitions
def1f30e674908fd248acfa51961b671597
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:pkgs | (pkgs gather: [:pkg | pkg workingCopy repositoryGroup repositories]) asSet asOrderedCollection] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'1f30e674-908f-d248-acfa-51961b671597').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:pkgs | (pkgs gather: [:pkg | pkg workingCopy repositoryGroup repositories]) asSet asOrderedCollection] value: in)]')})