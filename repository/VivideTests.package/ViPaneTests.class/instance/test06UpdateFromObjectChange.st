tests - updates and script selection
test06UpdateFromObjectChange

	| pane script last |
	pane := ViPane new.
	script := self addScript: [:num | Time now]. "Needed for test-local notifiers."
	
	pane script: script; objects: #(1).
	last := pane allResults first.
	self assert: last = pane allResults first.
	
	ViObjectChangeNotifier uniqueInstance objectChanged: 1.
	self assert: last = pane allResults first.
	
	self forceGuiUpdate.
	self assert: last < pane allResults first.