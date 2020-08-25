tests - toolset
test06BrowseClassHierarchy

	| class window pane |
	class := self class.
	
	window := ToolSet browseHierarchy: class selector: nil.
	pane := window.
	self
		assert: {class} equals: pane objects;
		assert: ({ProtoObject}, pane allResults includesAllOf: (class allSuperclasses, class withAllSubclasses));
		assert: #classHierarchy asScript equals: pane script.