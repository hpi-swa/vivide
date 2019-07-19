accessing
queries

	^ queries ifNil: [#()] ifNotNil: [:objectOrBlock | objectOrBlock value]