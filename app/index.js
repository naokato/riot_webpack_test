import riot from 'riot'
import 'riot-hot-reload'
import './main.tag'
import './sub.tag'
import Store from './store.js'

const store = new Store();
const tag = riot.mount('main', {
  store: store
})
store.setRoot(tag[0])
