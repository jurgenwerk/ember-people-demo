`import Ember from 'ember'`

PersonItemComponent = Ember.Component.extend

  edit: false

  isEditing: (->
    @get('person.isNew') || @get('edit')
  ).property('person.isNew', 'edit')

  actions:
    save: (person) ->
      person.save().then =>
        debugger
        @set('edit', false)

    delete: (person) ->
      person.destroyRecord()

    toggleEdit: ->
      @toggleProperty('edit')

`export default PersonItemComponent`
