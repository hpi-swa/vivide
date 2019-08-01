tests - connections and tuples
test03ConnectSelectedResults

	| producer consumer view |
	producer := ViPane new.
	consumer := ViPane new.

	producer ~~~ #selection ~~> consumer.
	producer
		script: { [:num | num * num] -> { #view -> ViTreeView }} asScript;
		objects: #(1 2 3).
	
	self flag: #refactor. "mt: This test depends of UiAbstractitemView interface."
	view := producer view "ViTreeView" currentVisibleView. "UiAbstractItemView"
	
	view selectNone; selectNextRow.
	self forceGuiUpdate.
	self assert: #(1) equals: consumer objects.

	view selectNextRow.
	self forceGuiUpdate.
	self assert: #(4) equals: consumer objects.

	view selectAll.
	self forceGuiUpdate.
	self assert: #(1 4 9) equals: consumer objects.