definitions
def43f664061f2fc347ad0364f1f9a82bd6
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:objs | objs reject: [:obj | obj isNil]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'43f66406-1f2f-c347-ad03-64f1f9a82bd6').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 November 2013 5:16:28 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:objs | objs reject: [:obj | obj isNil]] value: in)]')
})