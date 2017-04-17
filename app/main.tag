<main>
  <div class='box container is-primary'>
    <navi store={store}></navi>
    <sub store={store} subtitle={props.subtitle}></sub>
  </div>
  <script>
    this.store = opts.store
    this.props = this.store.toProps()

    this.on('update', () => {
      console.log('=== main.tag: update! ===')
    })

  </script>
</main>
