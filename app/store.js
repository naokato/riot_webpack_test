import riot from 'riot'
const defaultStore = {
  title: 'My main title',
  subtitle: "My sub title",
  subprofs: [
    { 
      name: "naokato",
      age: 79,
      addr: "Tokyo"
    },
    { 
      name: "sato",
      age: 32,
      addr: "Kanagawa"
    },
  ]
}

class Store {
  constructor(store) {
    this.store = Object.assign(defaultStore, store)

    riot.observable(this)

    this.on('store_update', () => {
      console.log('store.js: store_update start!!!')
      this.root.update()
      console.log('store.js: store_update end!!!')
    })

    this.on('changeTitles', (event) => {
      console.log('store.js: changeTitles emitted!!')
      this.store.title = "Main pushed!"
      this.store.subtitle = event.target.value
      this.trigger('store_update')
    })

    this.on('changeAge', (event) => {
      console.log('store.js: changeAge emitted!!')
      const value = event.target.value
      if(!value.match(/^\d+$/)) {
        event.target.classList.add('is-danger')
        console.log('store.js: changeAge/validateion error!')
        return
      }
      event.item.age = event.target.value
      this.trigger('store_update')
    })

    this.on('addProf', (event) => {
      console.log('store.js: addProf emitted!!')
      this.store.subprofs.push({
        name: "new man",
        age: 18,
        addr: "Unknown"
      })
      this.trigger('store_update')
    })

    this.on('deleteProf', (event) => {
      console.log('store.js: deleteProf emitted!!')
      const index = this.store.subprofs.indexOf(event.target)
      this.store.subprofs.splice(index, 1)
      this.trigger('store_update')
    })

    this.on('reset', (event) => {
      console.log('store.js: reset emitted!!')
      this.store.subprofs.splice(index, 1)
      this.store = Object.assign(defaultStore, store)
      this.trigger('store_update')
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
