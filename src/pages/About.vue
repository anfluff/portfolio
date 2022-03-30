<script setup>
import Lifetime from '../components/Lifetime.vue'
</script>

<template>
  <div class="about">
    <div class="columns">
      <div>
        <div class="image">
          <img
            src="../assets/myself/new.jpg"
            alt="Nicolay Apraksin, myself"
          >
        </div>
      </div>
      <div>
        <div>
          <div class="label">Here is my CV</div>
          <a href="/CV.pdf" download>Click to download↓</a>
        </div>

        <div style="margin-top: 3em">
          <div class="label">Contacts</div>
          <div>
            <a
              href="mailto:nickolayanatolievich@gmail.com"
            >nickolayanatolievich@gmail.com</a>
          </div>
          <div>
            <a
              href="https://t.me/afluff"
              target="_blank"
            >t.me/afluff</a>
          </div>
        </div>
      </div>
    </div>
    <div>
      <div class="label">
        And here is my lifetime experience:
      </div>
      <div class="subtitle">
        Feel free to hover items to see more info
      </div>
    </div>
  </div>

  <Lifetime />
</template>

<style scoped>
.about {
  text-align: center;
  font-size: 2em;
}
.about > div {
  margin-top: 3em;
}
.about > div:last-of-type {
  margin-bottom: 2em;
}
.subtitle {
  font-size: .8em;
  opacity: .6;
}

.columns {
  display: flex;
  justify-content: space-around;
  padding: 0 20vw;
}
.columns > div {
  flex: 0 0 50%;
}
.label {
  margin-bottom: .5em;
  color: var(--color-text-accent);
}

.image {
  display: inline-block;
  max-width: 500px;
}
.image img {
  width: 100%;
  border-radius: var(--border-radius);
  overflow: hidden;
}

@media screen and (max-width: 767px) {
  .columns {
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    padding: 0;
  }
  .columns > div:last-of-type {
    margin-top: 2em;
  }
  .about > div:first-of-type {
    margin-top: 1em;
  }
}
</style>
