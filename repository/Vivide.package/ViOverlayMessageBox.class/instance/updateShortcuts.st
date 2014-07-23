initialization
updateShortcuts
	"Set number keys as shortcuts for buttons."
	
	self eventHandler removeAllShortcuts.
	
	self ui buttonContainer submorphs withIndexDo: [:button :index |
		self eventHandler on: (Character digitValue: index) send: #doClick to: button].