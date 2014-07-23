actions
onFocusChanged: aLocalRectangle
	"Mapping to global coordinates."
	
	self focusChanged: (self textMorph bounds: aLocalRectangle in: self world).