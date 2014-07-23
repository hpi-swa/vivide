serialization
deserializeObjectFrom: aByteString

	| strm rr obj |
	strm := RWBinaryOrTextStream with: aByteString base64Decoded.
	strm reset.
	rr := ReferenceStream on: strm.
	obj := rr next.
	rr close.

	^ obj