output application/json
var yesterdayRecord = payload filter ($.TIMESTAMP > (vars.updateFrom as Date ++ "T" ++ p('yesterday.filter.start.time')) and $.TIMESTAMP < (vars.updateFrom as Date ++ "T" ++ p('yesterday.filter.end.time')))
var todayRecord = payload filter ($.TIMESTAMP > (vars.updateTo as Date ++ "T" ++ p('today.filter.start.time')) and $.TIMESTAMP < (vars.updateTo as Date ++ "T" ++ p('today.filter.end.time')))
---
(yesterdayRecord default "" ++ todayRecord default "") map {
	remove: $ - "TIMESTAMP"
}.remove