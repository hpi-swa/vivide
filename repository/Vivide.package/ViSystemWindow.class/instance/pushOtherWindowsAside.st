as yet unclassified
pushOtherWindowsAside

	self world ifNotNil: [:w |
		w submorphs 
			select: [:m | (m isKindOf: ViSystemWindow) and: [m ~~ self]]
			thenDo: [:wnd | (wnd bounds intersects: self bounds)
				ifTrue: [ | current wanted |
					current := wnd center - self center.
					wanted := (self extent // 2) + (wnd extent // 2) + 20.
					wanted := wanted - current abs.
					wanted > (0@0) ifTrue: [
						wanted x < wanted y
							ifTrue: [wanted := wanted x @ 0]
							ifFalse: [wanted := 0 @ wanted y].
						
						wnd walkToCenter: wnd center + (wanted * current sign)]
					
					
					]]]