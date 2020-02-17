initialization - scripts
addArtifacts

	self addScript: {
		[:in :out | in do: [:obj | (out identityIncludes: obj) ifFalse: [out add: obj]] ] -> {
			#label -> 'Artifacts'.
			#id -> #artifacts.
			#view -> ViArtifactListView2}.
	} asScript.