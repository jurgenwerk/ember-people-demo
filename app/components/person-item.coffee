`import Ember from 'ember'`

PersonItemComponent = Ember.Component.extend

  edit: false

  isEditing: (->
    @get('person.isNew') || @get('edit')
  ).property('person.isNew', 'edit')

  actions:
    save: (person) ->
      person.save().then =>
        @set('edit', false)

    delete: (person) ->
      person.destroyRecord()

    edit: ->
      @toggleProperty('edit')

`export default PersonItemComponent`
