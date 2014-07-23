gridding
enableGridding

	ActiveWorld griddingOn 
		ifFalse: [ActiveWorld griddingOnOff].
	ActiveWorld
		gridOrigin: RealEstateAgent maximumUsableArea topLeft;
		gridModulus: 20@20