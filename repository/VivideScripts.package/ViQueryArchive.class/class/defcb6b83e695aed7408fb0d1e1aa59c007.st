definitions
defcb6b83e695aed7408fb0d1e1aa59c007
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:mails | mails reject: [:m | m sender beginsWith: 'commits']] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'cb6b83e6-95ae-d740-8fb0-d1e1aa59c007').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2018 9:19:23 am')})).
(#sourceCode -> '[:in :out | out addAll: ([:mails | mails reject: [:m | m sender beginsWith: ''commits'']] value: in)]')})