tests
test01Open
	"Two ways to open a window with the script result. Check for consistency."

	| wnd1 wnd2 |
	wnd1 := ViMultiPaneEditor open: #senders for: #(drawOn:).
	wnd2 := vivide openQueries: #(senders) withObjects: #(drawOn:).

	self assert: wnd1 extent = wnd2 extent.