updating
updateIcon: anIcon

	self ensureTag ifFalse: [^ self].
	tag icon: anIcon.