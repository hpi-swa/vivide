private
ensureCellInsetFor: morphs

	morphs do: [:fixed |
		morphs do: [:variable |
			fixed ~~ variable ifTrue: [
				| delta |
				delta := variable left - fixed right "+ 1".
				(delta between: 0 and: self cellInset - 1)
					ifTrue: [variable
						left: variable left + self cellInset - delta;
						width: variable width - self cellInset + delta].
				delta := variable top - fixed bottom "+ 1".
				(delta between: 0 and: self cellInset - 1)
					ifTrue: [variable
						top: variable top + self cellInset - delta;
						height: variable height - self cellInset + delta].
				]]].