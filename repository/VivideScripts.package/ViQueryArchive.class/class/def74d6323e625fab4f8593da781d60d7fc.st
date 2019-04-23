definitions
def74d6323e625fab4f8593da781d60d7fc
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:method | 
	((Smalltalk at: #MethodTags ifAbsentPut: [Dictionary new])
		at: method methodReference ifAbsentPut: [Set new]) -> method]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'74d6323e-625f-ab4f-8593-da781d60d7fc').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 February 2014 3:41:39 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:method | 
	((Smalltalk at: #MethodTags ifAbsentPut: [Dictionary new])
		at: method methodReference ifAbsentPut: [Set new]) -> method]]
		value: in) do: [:result | out addAll: result asList]]')})