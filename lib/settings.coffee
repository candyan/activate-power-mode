# Refactoring status: 100%
class Settings
  constructor: (@scope, @config) ->

  get: (param) ->
    atom.config.get "#{@scope}.#{param}"

  set: (param, value) ->
    atom.config.set "#{@scope}.#{param}", value

module.exports = new Settings 'activate-power-mode',
  shakeIntensity:
    order: 1
    type: 'number'
    minimum: 0
    maximum: 30
    default: 2.0

  effect:
    order: 2
    type: 'number'
    default: 2
    enum: [1, 2]
