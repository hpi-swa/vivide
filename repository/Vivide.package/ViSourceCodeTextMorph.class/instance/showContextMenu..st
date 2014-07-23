actions
showContextMenu: aMouseEvent

	| menu |
	self selection ifEmpty: [^ self].
	
	(self contextMenu
		ifNil: [self defaultContextMenu]
		ifNotNil: [:menuOrBlock |
			menuOrBlock isBlock
				ifFalse: [menuOrBlock]
				ifTrue: [menuOrBlock
					value: ViContextMenu new
					value: self editor]])
			
			popUpAt: (self pointInWorld: aMouseEvent position).