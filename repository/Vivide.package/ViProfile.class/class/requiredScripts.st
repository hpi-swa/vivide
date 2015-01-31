as yet unclassified
requiredScripts
	"Returns a list of all script ids that should represent valid scripts for default programming purposes."

	^ #(
		artifacts "Allow for collecting objects via drag-and-drop."
		senders "Needed for integration with ToolSet"
		implementors "Needed for integration with ToolSet"
		objectExplorer "Needed for integration with ToolSet"
		formattedQueries "Show a list of scripts"
		outline "Show contents of a class"
	), {ViQueryStep defaultProperties id}