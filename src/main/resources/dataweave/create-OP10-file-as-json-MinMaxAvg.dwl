%dw 2.0
output application/json
---
vars.configDataMinMaxAvg filter ($."SCADA Table" == vars.tableName) map ((item, index) -> {
  date: vars.updateFrom as Date as String {format:"MM/dd/yyyy"},
  facilityId: p('op10.facility.id'),
  location: item.Location,
  parameter: item.Parameter,
  dataValue: payload[0] [item.'SCADA Tag' ++ "__" ++ item.'SCADA Column']
  //dataValue: payload[0] [item.'SCADA Tag']
})