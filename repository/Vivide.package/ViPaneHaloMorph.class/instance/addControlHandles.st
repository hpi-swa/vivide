handles
addControlHandles

	| box |
	box := self basicBox.
	
	(self addHandleButton: {UiFugueIcons arrowMoveIcon asWireframeSunken. 'Move pane'. box topLeft}) in: [:dragBtn |
		dragBtn eventHandler dragThreshold: 0.
		self connect: dragBtn eventHandler signal: #mouseDragStarted: toSelector: #startDrag:with: pattern: {1.#=.dragBtn}.
		self connect: dragBtn eventHandler signal: #mouseMoved: toSelector: #doDrag:with: pattern: {1.#=.dragBtn}.
		self connect: dragBtn eventHandler signal: #mouseReleased: toSelector: #endInteraction].

	(self addHandleButton: {UiFugueIcons arrowResize135Icon asWireframeSunken. 'Resize pane'. box bottomRight}) in: [:resizeBtn |	
		resizeBtn eventHandler dragThreshold: 0.
		self connect: resizeBtn eventHandler signal: #mouseDragStarted: toSelector: #startGrow:with: pattern: {1.#=.resizeBtn}.
		self connect: resizeBtn eventHandler signal: #mouseMoved: toSelector: #doGrow:with: pattern: {1.#=.resizeBtn}.
		self connect: resizeBtn eventHandler signal: #mouseReleased: toSelector: #endInteraction].

	(self addHandleButton: {ViIcons crossSmallSunkenIcon. 'Close pane'. box topRight}) in: [:closeBtn |
		self connect: closeBtn signal: #clicked: to: target selector: #close].
	
	"Advanced pane control."
	(self addHandleButton: {UiFugueIcons magnifierIcon asWireframeSunken. 'Explore pane'. ((box width // 2) + box left) @ box top}) in: [:exploreBtn |
		self connect: exploreBtn signal: #clicked: to: target selector: #explore].
	"(self addHandleButton: {UiFugueIcons magnifierIcon asWireframeSunken. ' pane'. ((box width // 2) + box left) @ box top}) in: [:exploreBtn |
		self connect: exploreBtn signal: #clicked: to: target selector: #explore]."