*vivide
showFlash

	| delay |	
	delay := Delay forMilliseconds: 50.
	5 timesRepeat: [ 2 timesRepeat: [
		Display border: self bounds width: 2 rule: Form reverse fillColor: Color gray.
		delay wait] ].