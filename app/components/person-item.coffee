`import Ember from 'ember'`

PersonItemComponent = Ember.Component.extend
  actions:
    save: (person) ->
      person.save()

`export default PersonItemComponent`
