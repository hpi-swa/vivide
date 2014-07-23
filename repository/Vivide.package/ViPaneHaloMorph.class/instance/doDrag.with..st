as yet unclassified
doDrag: evt with: dragHandle
	
	evt hand obtainHalo: self.
	
	evt shiftPressed ifTrue: [
		[
			evt hand releaseHalo: self. self delete.
			evt hand grabMorph: (
				(ViTransferMorph withPassenger: target from: self)
					dragTransferType: #pane).
			evt hand submorphs first topLeft: evt position + (10@10)]
		ensure: [Cursor normal show. evt hand releaseMouseFocus: self].
		^ self].
	
	
	target topLeft: evt cursorPoint - positionOffset.
	target layoutChanged.
	self topLeft: evt cursorPoint - positionOffset.
	dragHandle position: evt cursorPoint - (dragHandle extent // 2).