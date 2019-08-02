tests - toolset
test07BrowseMessageNames
	"There is no special script in Vivide for message names."

	| pattern messages window pane |
	pattern := 'draw*On:'.
	messages := MessageNames new computeSelectorListFrom: pattern.
	
	"Check validity of test data"
	self assert: messages size > 10.
	
	window := ToolSet browseMessageNames: pattern.
	pane := window pane.
	self assert: messages equals: pane objects.