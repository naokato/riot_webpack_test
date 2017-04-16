import riot from 'riot'
const defaultStore = {
  title: 'hello, world!',
  subtitle: "my sub title"
}

class Store {
  constructor(store) {
    this.store = Object.assign(defaultStore, store)

    riot.observable(this)

    this.on('obs_update', () => {
      console.log('obs_update start!!!')
      this.root.update()
      console.log('obs_update end!!!')
    })

    this.on('change_titles', () => {
      this.store.title="pushed! title"
      this.store.subtitle="pushed! subtitle"
      this.trigger('obs_update')
    })
  }

  setRoot(root) {
    this.root = root
  }

  toProps() {
    return this.store
  }
}
export default Store
