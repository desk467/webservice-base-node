import test from 'node:test'
import assert from 'node:assert'
import { getHello } from './hello.js'

test('should return OK', () => {
  // arrange
  let actualResponse = ''
  const req = {}
  const res = { send: (txt) => { actualResponse = txt } }

  // act
  getHello(req, res)

  // assert
  assert.equal(actualResponse, 'OK')
})
