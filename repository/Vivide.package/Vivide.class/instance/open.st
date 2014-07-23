initialization
open
	
	| window |

	self extent: 800@500.

	window := (ViSystemWindow
		morph: self
		label: self class appName).
	
	ActiveVivide := self.
	
	self connect: window signal: #aboutRequested toSelector: #showAbout.
	self connect: window signal: #closeRequested toSelector: #close.
	
	self
		color: (Color gray: 0.85);
		borderColor: Color black.