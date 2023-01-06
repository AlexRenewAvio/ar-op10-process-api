%dw 2.0
var groupedByTable = vars.configDataTotal groupBy $."SCADA Table" mapObject ((value, key, index) -> {
  listOfFields: value.."SCADA Tag" joinBy ","
})
output application/json  
---
groupedByTable pluck ((value1, key1, index1) -> {
  tableValues: value1,
  tableName : (vars.configDataTotal filter ((value1) contains $."SCADA Tag"))[0]."SCADA Table"
})