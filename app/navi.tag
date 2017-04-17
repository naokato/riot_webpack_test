<navi>
  <nav class="nav">
    <div class="nav-left">
      <a class="nav-item">
        <h1 class='title is-1'>{ props.title } </h1>
      </a>
    </div>
  
    <div class="nav-center">
      <a class="nav-item">
        <span>
          aaa
        </span>
      </a>
      <a class="nav-item">
        <span>
          bbb
        </span>
      </a>
    </div>
  
    <span class="nav-toggle">
      <span>A</span>
      <span>B</span>
      <span>C</span>
    </span>
  
      <div class="nav-item">
        <div class="field is-grouped">
          <p class="control">
            <a class="button is-primary">
              <span onclick={this.reset}>Reset</span>
            </a>
          </p>
        </div>
      </div>
    </div>
  </nav>
 
  <script>
    this.store = opts.store
    this.props = this.store.toProps()
    
    this.reset = (event) => {
      console.log('aa');
      event.preventUpdate = true
      this.store.trigger('reset', event)
    }
  </script>
</navi>
