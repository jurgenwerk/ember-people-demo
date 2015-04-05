`import DS from 'ember-data'`

Person = DS.Model.extend
  name: DS.attr('string')
  last_name: DS.attr('string')
  profession: DS.attr('string')

`export default Person`
