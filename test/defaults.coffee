assert = require 'assert'
mongoose = require 'mongoose'
{Schema} = require 'mongoose'
json_schema = require './../src/json_schema'

example = require './../examples/js_person'

describe 'ensure schema with default values is pushed to mongoose', ->
  it 'should require default values', ->
    schema = json_schema.to_mongoose_schema example
    Person = mongoose.model 'Person', new Schema schema
    bob = new Person

    assert.equal bob.name, 'Jay Schem'
