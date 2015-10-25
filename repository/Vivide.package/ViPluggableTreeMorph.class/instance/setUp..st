initialization
setUp: script

	| columns |

	script isHomogeneous ifFalse: [
		self treeMorph columns: #().
		^ self].
	
	columns := Array new: script maxPropertyCount.
	
	columns at: 1 put:
		[:listMorph | (listMorph filteredItems collect: [:item |
			item preferredWidthOfColumn: 1]) max].
	
	self treeMorph columns: columns.