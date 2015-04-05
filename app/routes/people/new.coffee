`import Ember from 'ember'`

PeopleNewRoute = Ember.Route.extend

  model: ->
    @store.createRecord('person')

  actions:
    save: (model) ->
      model.save().then =>
        @transitionTo('people')

`export default PeopleNewRoute`
