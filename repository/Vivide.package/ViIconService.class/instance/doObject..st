squeak - kernel
doObject: anObject
	"Use Morphic implementation as fallback."

	^ (super doObject: anObject)
			ifNil: [anObject iconOrThumbnailOfSize: (16 scaleValueToDisplay roundTo: 8)]
			ifNotNil: [:form | form scaleIconToDisplay]