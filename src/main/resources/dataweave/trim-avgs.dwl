%dw 2.0
output application/json
---
payload map ((item, index) -> {
	date: item.date,
	facilityId: item.facilityId,
	location: item.location,
	parameter: item.parameter,
	dataValue: if ( sizeOf((item.dataValue splitBy '.')[0]) == 1 and (item.dataValue splitBy ".")[0] == "0" ) item.dataValue as String {
		format: "#.################"
	} else
if ( sizeOf((item.dataValue splitBy '.')[0]) == 1 ) item.dataValue as String {
		format: "#.##############"
	} else 
if ( sizeOf((item.dataValue splitBy '.')[0]) == 2 ) item.dataValue as String {
		format: "#.#############"
	} else 
if ( sizeOf((item.dataValue splitBy '.')[0]) == 3 ) item.dataValue as String {
		format: "#.############"
	} else 
if ( sizeOf((item.dataValue splitBy '.')[0]) == 4 ) item.dataValue as String {
		format: "#.###########"
	} else 
if ( sizeOf((item.dataValue splitBy '.')[0]) == 5 ) item.dataValue as String {
		format: "#.##########"
	} else 
if ( sizeOf((item.dataValue splitBy '.')[0]) == 6 ) item.dataValue as String {
		format: "#.#########"
	} else 
item.dataValue
})