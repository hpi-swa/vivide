geometry - callbacks
onVisibilityChanged: mouseEvent

	self isCollapsed
		ifTrue: [self expand]
		ifFalse: [self collapse].