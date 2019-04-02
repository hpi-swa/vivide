definitions
def7fbbe979bf3f074faf87956b9271e3f2
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:classes :offset | offset contents: (classes ifEmpty: [0] ifNotEmpty: [:o | o first allSuperclasses size]). classes] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'7fbbe979-bf3f-074f-af87-956b9271e3f2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 12:40:04 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:classes :offset | offset contents: (classes ifEmpty: [0] ifNotEmpty: [:o | o first allSuperclasses size]). classes] value: in)]')})