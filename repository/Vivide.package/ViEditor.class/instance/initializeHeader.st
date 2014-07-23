initialization
initializeHeader
	"Call this if your UI contains the same elements in the header."

	self connect: self ui closeBtn signal: #clicked: toSelector: #tryClose.
	self connect: self ui hideBtn eventHandler signal: #mouseClicked: toSelector: #onVisibilityChanged:.
	self ui headerBtn
		dragTransferType: #editor;  
		target: self.
	
	self connect: self ui headerBtn signal: #clicked: toSelector: #beginEditHeader.
	
	"Override icons."
	self ui closeBtn icon: ViIcons crossSmallSunkenIcon.
	self ui hideBtn
		checkable: false;  
		icon: ViIcons control090SmallSunkenIcon.
		
	"Override layout inset."
	self header layoutInset: (0@0 corner: 0@ -2)  