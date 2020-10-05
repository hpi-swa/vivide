as yet unclassified
invokeMenuOn: container

	self pane chooseAndOpenScriptWith: ((self selectedItemsOn: container)
		collect: [:morph | (morph valueOfProperty: #node) object])