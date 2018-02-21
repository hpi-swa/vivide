random-accessing
dragIcon
	
	^ Icons
		at: #dragIcon
		ifAbsentPut:[self dragIconContents].