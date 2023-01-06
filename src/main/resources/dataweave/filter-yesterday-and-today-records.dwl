output application/json
var yesterdayRecord = payload filter ($.TIMESTAMP > (vars.updateFrom as Date ++ "T22:55") and $.TIMESTAMP < (vars.updateFrom as Date ++ "T22:59"))
var todayRecord = payload filter ($.TIMESTAMP > (vars.updateTo as Date ++ "T01:15") and $.TIMESTAMP < (vars.updateTo as Date ++ "T01:19"))
---
(yesterdayRecord default "" ++ todayRecord default "") map {
	remove: $ - "TIMESTAMP"
}.remove