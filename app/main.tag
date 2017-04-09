<main>
  <h1 id="my_title">{ title } </h1>
  <button onclick={ change }> push me! </button>

  this.title = opts.title

  this.change = (e) => {
    this.title="pushed!";
  }
</main>
