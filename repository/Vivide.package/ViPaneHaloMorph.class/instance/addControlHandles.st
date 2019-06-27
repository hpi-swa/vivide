handles
addControlHandles

	| box buttonSize |
	box := self basicBox.
	buttonSize := 14.
	
	(self addHandleButton: {ViIcons icons8Move64px1Icon scaledToDisplay. 'Move pane'. box topLeft}) in: [:dragBtn |
		dragBtn eventHandler dragThreshold: 0.
		self connect: dragBtn eventHandler signal: #mouseDragStarted: toSelector: #startDrag:with: pattern: {1.#=.dragBtn}.
		self connect: dragBtn eventHandler signal: #mouseMoved: toSelector: #doDrag:with: pattern: {1.#=.dragBtn}.
		self connect: dragBtn eventHandler signal: #mouseReleased: toSelector: #endInteraction].

	(self addHandleButton: {ViIcons icons8Enlarge232px1Icon scaledToDisplay. 'Resize pane'. box bottomRight}) in: [:resizeBtn |	
		resizeBtn eventHandler dragThreshold: 0.
		self connect: resizeBtn eventHandler signal: #mouseDragStarted: toSelector: #startGrow:with: pattern: {1.#=.resizeBtn}.
		self connect: resizeBtn eventHandler signal: #mouseMoved: toSelector: #doGrow:with: pattern: {1.#=.resizeBtn}.
		self connect: resizeBtn eventHandler signal: #mouseReleased: toSelector: #endInteraction].

	(self addHandleButton: {ViIcons icons8Delete64px1Icon scaledToDisplay. 'Close pane'. box topRight}) in: [:closeBtn |
		self connect: closeBtn signal: #clicked: to: target selector: #close].
	
	"Advanced pane control."
	(self addHandleButton: {ViIcons icons8SearchProperty32pxIcon scaledToDisplay. 'Explore pane'. ((box width // 2) + box left - (buttonSize * 1.5)) @ box top}) in: [:exploreBtn |
		self connect: exploreBtn signal: #clicked: to: self selector: #delete.
		self connect: exploreBtn signal: #clicked: to: target selector: #explore.
		].
	(self addHandleButton: {ViIcons icons8FlowChart32pxIcon scaledToDisplay. 'Explore hierarchy'. ((box width // 2) + box left + (buttonSize * 1.5)) @ box top}) in: [:exploreBtn |
		self connect: exploreBtn signal: #clicked: to: self selector: #delete.
		self connect: exploreBtn signal: #clicked: to: target selector: #exploreHierarchy.
		].

	"(self addHandleButton: {UiFugueIcons magnifierIcon asWireframeSunken. ' pane'. ((box width // 2) + box left) @ box top}) in: [:exploreBtn |
		self connect: exploreBtn signal: #clicked: to: target selector: #explore]."