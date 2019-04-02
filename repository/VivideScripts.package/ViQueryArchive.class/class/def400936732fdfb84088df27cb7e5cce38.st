definitions
def400936732fdfb84088df27cb7e5cce38
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:entries | entries select: [:entry | entry isDirectory]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'40093673-2fdf-b840-88df-27cb7e5cce38').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:entries | entries select: [:entry | entry isDirectory]] value: in)]')})