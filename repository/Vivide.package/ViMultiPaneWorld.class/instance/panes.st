as yet unclassified
panes

	^ self container submorphs select: [:m | m isSystemWindow] thenCollect: [:wnd | wnd editor pane]