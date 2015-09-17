as yet unclassified
updateHighlight: evt

	| bar |
	bar := self submorphs first.
	
	bar height: self height.
	bar left: self graph left + (evt position x - self graph left roundTo: self graph width / self numberOfPoints).