definitions
def4f13abced7275143a5693a329c380f68
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'15 June 2015 9:17:12 am'); yourself)); add: (#id->#'4f13abce-d727-5143-a569-3a329c380f68'); add: (#block->[:in :out | (
	[:objects | objects collect: [:profile | 
	{'Packages'. profile recentPackages objects} asTuples,
	{'Classes'. profile recentClasses objects} asTuples, 
	{'Methods'. profile recentMethods objects} asTuples ]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:profile | 
	{''Packages''. profile recentPackages objects} asTuples,
	{''Classes''. profile recentClasses objects} asTuples, 
	{''Methods''. profile recentMethods objects} asTuples ]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)