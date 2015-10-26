*vivide
showFlashMini

	| delay |	
	delay := Delay forMilliseconds: 50.
	5 timesRepeat: [ 2 timesRepeat: [
		Display fill: (self topLeft extent: 5@5) rule: Form reverse fillColor: Color gray.
		delay wait] ].