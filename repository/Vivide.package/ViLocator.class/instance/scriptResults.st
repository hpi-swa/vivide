actions - results
scriptResults
	"For consistency. Like drag-modifiers, it should be possible to script the selected results."
	
	VivideLight active scriptArtifacts: (resultList selectedNodes collect: [:node | node at: #object]).