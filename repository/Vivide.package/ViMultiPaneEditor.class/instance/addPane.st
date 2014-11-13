actions
addPane
	"Add default pane with default queries."

	self addPane: (ViPane new
		queries: [ViQueryOrganizer active orderedSteps];
		topLeft: self ui content topRight;
		height: self height;
		yourself).