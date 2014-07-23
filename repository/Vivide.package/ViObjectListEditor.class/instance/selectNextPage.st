actions
selectNextPage

	(self ui pageButtonGroup button: self ui stack currentIndex + 1)
		ifNotNil: [:btn | btn checked: true].