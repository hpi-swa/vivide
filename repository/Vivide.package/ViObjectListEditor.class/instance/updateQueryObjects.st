pages - updating
updateQueryObjects

	self ui extensionalListBtn
		setIconByNumber: self inputPage objects size
		color: (Color gray: 0.6). 

	self outputPages withIndexDo: [:page :idx |
		page objectsDeferred: self inputPage objects.
		page hasDeferredObjects ifTrue: [
			(self ui pageButtonGroup button: idx + 1)
				setIcon: UiDiagonaIcons icon0321Small]].