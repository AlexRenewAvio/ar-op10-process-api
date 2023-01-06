%dw 2.0
var split = payload.tableValues splitBy ","
var queryPrefix = "Select TIMESTAMP,"
var QueryFrom = " from dbo."
fun matrix(value, col, table) =
  value match {
	case "Total" -> ("(" ++ col ++ ")")
}
var queryColumns = ((vars.configDataTotal filter (split contains $."SCADA Tag") map (matrix($."Query Type" ,$."SCADA Tag", $."SCADA Table") ++ (" " ++ $."SCADA Tag" ++ "__" ++ $."SCADA Column"))) joinBy ",")
var querySuffix = QueryFrom ++ vars.tableName ++ " where Timestamp >= " ++ "'" ++ vars.updateFrom ++ "'" ++ " and Timestamp < " ++ "'" ++  vars.updateTo ++ " " ++ "01:30:00" ++ "'" ++ " order by TIMESTAMP"
output application/json
---
queryPrefix ++ queryColumns ++ querySuffix
