as yet unclassified
selectPreviousWindow

	self selectWindow: (self thumbnails atWrap: (self thumbnails indexOf: self selectedWindow) - 1).