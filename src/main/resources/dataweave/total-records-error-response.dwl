%dw 2.0
output application/json
---
flatten(payload..payload) filter ($.errorMessage contains "failed to process") filter ($ != {})