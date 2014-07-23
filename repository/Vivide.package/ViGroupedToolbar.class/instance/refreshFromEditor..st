initialization
refreshFromEditor: anArtifactEditor

	self groups do: [:assoc |
		| model |
		model := assoc value.
		model refreshFromEditor: anArtifactEditor].
	
	"Update available queries."
"	self queryListModel objects: (ViQueryOrganizer default queries select: [:q |
		anArtifactEditor object isKindOf: q baseClass])."