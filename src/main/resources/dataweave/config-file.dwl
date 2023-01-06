%dw 2.0
var configFileData = readUrl("classpath://configMapping/mule-config.xlsx", "application/xlsx")
output application/json
---
configFileData