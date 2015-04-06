`import Ember from 'ember'`

PeopleController = Ember.Controller.extend

  filteredPeople: (->
    filter = @get('searchFilter')
    if filter?
      @get('model').filter (person) ->
        personData = person.get('name') + person.get('last_name') + person.get('profession')
        (personData || '').indexOf(filter) != -1
    else
      @get('model')
  ).property('model.[]', 'searchFilter')

`export default PeopleController`
