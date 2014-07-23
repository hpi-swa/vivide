sorting
sortBlockForObjects

	^ [:obj1 :obj2 | (ViLabelService doObject: obj1) asString <= (ViLabelService doObject: obj2) asString]