<main>
  <h1 id="my_title">{ props.title } </h1>
  <sub subtitle={props.subtitle}></sub>

  <script>
    this.store = opts.store
    this.props = this.store.toProps()

    this.on('update', () => {
      console.log('=== main update! ===')
      console.log(this.store);
      console.log('=== main update end! ===')
    })

    this.change = (e) => {
      e.preventUpdate = true
      this.store.trigger('change_titles')
    }
  </script>
</main>
