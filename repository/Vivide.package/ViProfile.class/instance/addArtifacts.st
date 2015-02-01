initialization - scripts
addArtifacts

	self addScript:
		([:in :out | in do: [:obj | (out identityIncludes: obj) ifFalse: [out add: obj]]] asRawScript
			label: 'Artifacts';
			id: #artifacts;
			setProperty: #view toValue: ViArtifactListView2;
			yourself).