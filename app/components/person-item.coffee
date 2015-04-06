`import Ember from 'ember'`

PersonItemComponent = Ember.Component.extend

  editMode: false

  isEditing: (->
    @get('person.isNew') || @get('editMode')
  ).property('person.isNew', 'editMode')

  actions:
    save: (person) ->
      person.save().then =>
        @set('editMode', false)

    delete: (person) ->
      person.destroyRecord()

    edit: ->
      @toggleProperty('editMode')

`export default PersonItemComponent`
