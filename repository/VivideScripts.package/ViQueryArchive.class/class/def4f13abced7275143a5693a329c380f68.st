definitions
def4f13abced7275143a5693a329c380f68
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:profile | 
	{'Packages'. profile recentPackages objects} asTuples,
	{'Classes'. profile recentClasses objects} asTuples, 
	{'Methods'. profile recentMethods objects} asTuples,
	{'Scripts'. profile recentScripts objects} asTuples ]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'4f13abce-d727-5143-a569-3a329c380f68').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 June 2015 9:17:12 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:profile | 
	{''Packages''. profile recentPackages objects} asTuples,
	{''Classes''. profile recentClasses objects} asTuples, 
	{''Methods''. profile recentMethods objects} asTuples,
	{''Scripts''. profile recentScripts objects} asTuples ]]
		value: in) do: [:result | out addAll: result asList]]')})