serialization
serializeObject: anObject

	| strm rr |
	strm := RWBinaryOrTextStream with: String new.
	rr := ReferenceStream on: strm.
	rr nextPut: anObject.
	rr close.
	strm reset.
	^ strm contents base64Encoded