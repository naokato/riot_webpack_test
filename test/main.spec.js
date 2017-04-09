const expect = require('chai').expect;
import riot from 'riot'
require('../app/main.tag');
describe('karma-riot specs', function() {
  it('mounts main tag', function() {
    var html = document.createElement('main')
    document.body.appendChild(html)
    riot.mount('main', {
      title: "test title!"
    })
    expect(document.querySelector('h1').innerText).to.equal('test title!')
    const button = document.querySelector('button')
    button.click();
    expect(document.querySelector('h1').innerText).to.equal('pushed!')
  })
})
