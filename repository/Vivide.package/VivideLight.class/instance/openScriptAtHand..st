as yet unclassified
openScriptAtHand: script

	(self openScript: script) in: [:wnd |
		wnd center: ActiveHand center.
		ActiveHand grabMorph: wnd].