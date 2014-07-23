actions - open
openQueryAtHand: aQueryOrSymbol

	(self openQuery: aQueryOrSymbol) in: [:wnd |
		wnd center: ActiveHand center.
		ActiveHand grabMorph: wnd].