%dw 2.0
output application/json
---
{
	errorMessage: "failed to process all columns data in table: " ++ vars.tableName default "",
	errorCause: error.description default "Unknown error, check CloudHub logs for more details"
}