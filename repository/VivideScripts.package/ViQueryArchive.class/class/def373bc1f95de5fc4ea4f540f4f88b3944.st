definitions
def373bc1f95de5fc4ea4f540f4f88b3944
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:def | {#text -> ''. #morph -> (
	Morph new
		color: (Color green paler muchDarker alpha: 0.5);
		height: 12;
		width: ((def first / def second) * 100) truncated)
"		width: (((def first log: 10) / (def second log: 10) ceiling) * 200) truncated)"}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'373bc1f9-5de5-fc4e-a4f5-40f4f88b3944').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:def | {#text -> ''''. #morph -> (
	Morph new
		color: (Color green paler muchDarker alpha: 0.5);
		height: 12;
		width: ((def first / def second) * 100) truncated)
"		width: (((def first log: 10) / (def second log: 10) ceiling) * 200) truncated)"}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})