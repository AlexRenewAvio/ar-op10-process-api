%dw 2.0
output application/csv separator="\t", header=false
---
flatten(payload..payload) filter ($ != {})