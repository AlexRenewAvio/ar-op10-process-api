%dw 2.0
var split = payload.tableValues splitBy ","
var queryPrefix = "Select "
var innerQueryFrom = " from dbo."
fun matrix(value, col, table) =
  value match {
	case "Maximum" -> ("max(" ++ col ++ ")")
    case "Minimum" -> ("min(" ++ col ++ ")")
    case "Average" -> ("avg(" ++ col ++ ")")
}
var queryCondition= innerQueryFrom ++ (vars.configDataMinMaxAvg filter (split contains $."SCADA Tag"))[0]."SCADA Table" ++ " where Timestamp >= " ++ "'" ++ vars.updateFrom ++ "'" ++ " and Timestamp < " ++ "'" ++  vars.updateTo ++ "'"
var querColumns=((vars.configDataMinMaxAvg filter (split contains $."SCADA Tag") map (matrix($."Query Type" ,$."SCADA Tag", $."SCADA Table") ++ (" " ++ $."SCADA Tag" ++ "__" ++ $."SCADA Column"))) joinBy ",")
var querySuffix = queryCondition
output application/json
---
queryPrefix ++ querColumns ++ querySuffix

