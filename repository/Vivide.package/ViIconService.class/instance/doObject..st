operations
doObject: anObject
	"Use Morphic implementation as fallback."

	^ (super doObject: anObject)
			ifNil: [anObject iconOrThumbnailOfSize: 16 * RealEstateAgent scaleFactor]
			ifNotNil: [:form | form scaledToDisplay]