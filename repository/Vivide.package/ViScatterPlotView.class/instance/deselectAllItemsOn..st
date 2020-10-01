as yet unclassified
deselectAllItemsOn: container

	container submorphsDo: [:m |
		self unhighlightItem: m; deselectItemSilently: m].
	self yieldSelectionOn: container.

	self changed. "draw cross"