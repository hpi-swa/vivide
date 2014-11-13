private
performTest
	"Override active vivide lookup for GUI elements to open in test world."
	
	ViActiveVivide
		value: vivide
		during: [super performTest]. 