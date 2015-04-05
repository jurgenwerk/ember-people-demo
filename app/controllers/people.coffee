`import Ember from 'ember'`

PeopleController = Ember.Controller.extend

  filteredPeople: (->
    if @get('filter')?
      @get('model').filter (person) =>
        personData = person.get('name') + person.get('last_name') + person.get('profession')
        personData.indexOf(@get('filter')) != -1
    else
      @get('model')
  ).property('model.[]', 'filter')

`export default PeopleController`
