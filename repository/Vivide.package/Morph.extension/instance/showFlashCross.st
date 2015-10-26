*vivide
showFlashCross

	| delay |	
	delay := Delay forMilliseconds: 50.
	5 timesRepeat: [
		2 timesRepeat: [
			Display fill: ((self left @ self center y corner: self right @ self center y) outsetBy: (0@1)) rule: Form reverse fillColor: Color gray.
			Display fill: ((self center x @ self top corner: self center x @ self bottom) outsetBy: (1@0)) rule: Form reverse fillColor: Color gray.
			delay wait]].