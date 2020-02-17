*vivide-support
asThumbnailOfSize: point
	"3d844e49-33d1-d84c-8cd8-569a73e88365"
	
	| form chars |
	form := Form extent: 4@4 depth: 32.
	
	1 to: 16 do: [:i |
		| num alpha hue value x y |
		num := self at: i.
		value := (num bitAnd: 16r0F). "0..15"
		hue := (num bitAnd: 16rF0) bitShift: -4. "0..15"
		alpha := value even ifTrue: [1.0] ifFalse: [0.2].
			
		x := (i-1 \\ 4).
		y := (i-1 // 4).
				
		form colorAt: x @ y put:
			(Color
				h: 360 / 16 * hue
				s: 1
				v: 0.2 + (0.6 / 16 * value)
				alpha: alpha).
			].
			
	^ form scaledToSize: ((point max: 4@4) roundTo: 4@4)