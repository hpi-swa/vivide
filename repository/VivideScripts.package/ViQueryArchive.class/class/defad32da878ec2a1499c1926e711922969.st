definitions
defad32da878ec2a1499c1926e711922969
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:entries | entries gather: [:entry | entry asFileDirectory entries]] value: in)]).
(#class -> ViScriptDefinition).
(#id -> #'ad32da87-8ec2-a149-9c19-26e711922969').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:entries | entries gather: [:entry | entry asFileDirectory entries]] value: in)]')})