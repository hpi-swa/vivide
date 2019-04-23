definitions
deff009b85efe0f544ebe0732772fd16970
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:mails | | bag |
	bag := Bag new.

	mails do: [:ea | bag add: ea sender].
	
	bag sortedCounts]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'f009b85e-fe0f-544e-be07-32772fd16970').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 March 2018 10:31 am')})).
(#sourceCode -> '[:in :out | (
	[:mails | | bag |
	bag := Bag new.

	mails do: [:ea | bag add: ea sender].
	
	bag sortedCounts]
		value: in) do: [:result | out addAll: result asList]]')})