as yet unclassified
onView: view menuRequestedAt: point for: node

	self pane chooseAndOpenScriptWith: (view selectedNodes collect: [:n | n at: #object]).