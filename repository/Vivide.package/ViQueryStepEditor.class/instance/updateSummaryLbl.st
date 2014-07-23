updating
updateSummaryLbl

	self step 
		ifNil: [self ui summaryLbl text: '<font size="8" color="#AAAAAA">No query step.</font>']
		ifNotNil: [:q |
			self ui summaryLbl text: ('<font size="8">{4}{1}{5}</font><font size="8" color="#AAAAAA"> \\<{2}\\>, \\<{3}\\></font>'
				format: {
					self currentLabel ifNil: [''].
					q id withoutLineEndingsTruncatedTo: 25.
					q viewDefinition id withoutLineEndingsTruncatedTo: 25.
					self hasUnacceptedChanges ifTrue: ['<b>'] ifFalse: [''].
					self hasUnacceptedChanges ifTrue: [' *changed*</b>'] ifFalse: ['']})].