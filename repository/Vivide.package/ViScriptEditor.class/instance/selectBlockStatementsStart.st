actions - navigation
selectBlockStatementsStart

	self selectBlockStatements.
	self textField select: (self textField selection first to: self textField selection first - 1).