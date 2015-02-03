instance creation
prepareSqueak
	
	ActiveWorld color: ViIcons grayWashedWallPattern.

	"Use not-so-round corners."
	CornerRounder classPool
		at: #CR0 put: (CornerRounder new
			masterMask:
				(Form extent: 4@4
					fromArray: #( 805306368 1879048192 4026531840 4026531840)
					offset: 0@0)
			masterOverlay:
				(Form extent: 4@4
					fromArray: #( 805306368 1073741824 2147483648 2147483648)
					offset: 0@0));
		at: #CR1 put: (CornerRounder classPool at: #CR0).

	Preferences roundedWindowCorners
		ifFalse: [Preferences toggleRoundedCorners].