<sub>
  <h1>{opts.subtitle}</h1>
  <button onclick={this.change}> push me! </button>

  <script>
    this.change = this.parent.change.bind(self.parent)

    this.on('update', () => {
      console.log('=== sub update! ===')
      console.log('=== sub update end! ===')
    })
  </script>
</sub>
