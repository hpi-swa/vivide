definitions
def772cc5f9cfec4f499902686bc54662cf
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj | ([[:f | f asFileDirectory entries select: [:e | e isDirectory]] value: obj] on: Error do: [#()]),
	([[:f | f asFileDirectory entries select: [:e | e isDirectory not]] value: obj] on: Error do: [#()])]).
(#class -> ViQueryMapDefinition).
(#id -> #'772cc5f9-cfec-4f49-9902-686bc54662cf').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:obj | ([[:f | f asFileDirectory entries select: [:e | e isDirectory]] value: obj] on: Error do: [#()]),
	([[:f | f asFileDirectory entries select: [:e | e isDirectory not]] value: obj] on: Error do: [#()])]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})