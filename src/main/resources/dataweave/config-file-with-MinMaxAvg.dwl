%dw 2.0
output json
---
vars.configData.mapping map $ filter $.'Query Type' != "Total"