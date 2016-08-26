window.AWM.Storage.Time =


# Number Helpers

### util/number-map
Number.prototype.map = (in_min, in_max, out_min, out_max) ->
  (@ - in_min) * (out_max - out_min) / (in_max - in_min) + out_min
###

### util/number-constrain
Number.prototype.constrain = (min, max) ->
  Math.max(Math.min(@, min), max)
###

### util/number-random-within
Number.prototype.random_within = (distance) ->
  Math.random().map 0, 1, @ - distance, @ + distance
###

### util/document-size
window.AWM.Functions.document_height = ->
  body = document.body
  body_element = document.documentElement
  Math.max body.scrollHeight, body.offsetHeight, body_element.clientHeight, body_element.scrollHeight, body_element.offsetHeight
###


# Date Helpers


### util/date-constants
$.extend Date.prototype,
  SECOND_IN_MILLISECONDS: 1000

  MINUTE_IN_SECONDS: 60
  MINUTE_IN_MILLISECONDS: 60 * 1000

  HOUR_IN_SECONDS: 60 * 60
  HOUR_IN_MILLISECONDS: 60 * 60 * 1000

  DAY_IN_SECONDS: 24 * 60 * 60
  DAY_IN_MILLISECONDS: 24 * 60 * 60 * 1000

  WEEK_IN_SECONDS: 7 * 24 * 60 * 60
  WEEK_IN_MILISECONDS: 7 * 24 * 60 * 60 * 1000
###

### util/date-week-start
Date.prototype.weekStart = ->
  @getTime() - ( @getDay() * @DAY_IN_MILLISECONDS ) - ( @getHours() * @HOUR_IN_MILLISECONDS ) - ( @getMinutes() * @MINUTE_IN_MILLISECONDS ) - ( @getSeconds() * @SECOND_IN_MILLISECONDS ) - ( @getMilliseconds() )
###

### Deprecated
Date.prototype.weekEnd = ->
###