`import Ember from 'ember'`

PeopleRoute = Ember.Route.extend

  model: ->
    @store.find('person')

  actions:
    new: ->
      @store.createRecord('person')

`export default PeopleRoute`
