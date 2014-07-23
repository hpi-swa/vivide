private
showPreviewAt: globalBounds
	"If a panel was built, show it relative to the given global bounds."
	
	self setPanelPositionAt: globalBounds.  
	
	self panel ifNil: [^ self].
	
	self panel
		openInWorld;
		fadeIn.
	self discardPreviewLater.
	
	self connect: self panel eventHandler signal: #mouseEntered: toSelector: #keepPreview.
	self connect: self panel eventHandler signal: #mouseLeft: toSelector: #discardPreview.