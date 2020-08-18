as yet unclassified
initialize

	super initialize.
	self layoutPolicy: ViHaloLayout new.

	self layoutOutset: 6. "aka. border grip thickness"
	"(6@40 corner: 6@6)"
	self outerBorderWidth: 1.

	self color: Color veryVeryLightGray.
	self outerBorderColor: (Color veryVeryLightGray adjustBrightness: -0.3).

"
	self borderWidth: 0.
	self borderColor: Color black.
"