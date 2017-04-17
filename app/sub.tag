<sub>
  <article class='message is-info'>
    <h1 class='subtitle is-3'>{opts.subtitle}</h1>
    <button class='button' onclick={this.changeTitles} value='Sub pushed!!!'> push me! </button>
  </article>
  <article class='message is-info' each={props.subprofs}>
    <span class='message-header'>
      Profile: {name}
      <button class="delete is-small" onclick={parent.deleteProf}></button>
    </span>
    <div class='message-body'>
      <ul class='box'>
        <li>Age: {age}
        <li>Addr: {addr}
      </ul>
      <div>update age to <input type='text' onblur={parent.changeAge}></input></div>
    </div>
  </article>
  <button class='button' onclick={this.addProf}> add prof </button>

  <script>
    self = this
    this.store = opts.store
    this.props = this.store.toProps()
    console.log(this.props)

    this.on('update', () => {
      console.log('=== sub.tag: update! ===')
    })

    this.changeTitles = (event) => {
      event.preventUpdate = true
      this.store.trigger('changeTitles', event)
    }

    this.changeAge = (event) => {
      event.preventUpdate = true
      console.log('sub.tag: changeAge')

      self.store.trigger('changeAge', event)
    }

    this.addProf = (event) => {
      event.preventUpdate = true
      this.store.trigger('addProf', event)
    }

    this.deleteProf = (event) => {
      event.preventUpdate = true
      this.store.trigger('deleteProf', event)
    }
  </script>
</sub>
