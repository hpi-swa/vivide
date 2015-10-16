as yet unclassified
tabAmongWindows

	self windowsDashboard
		ifNil: [ViWindowsDashboard new openInWorld]
		ifNotNil: [:db | db selectNextWindow].