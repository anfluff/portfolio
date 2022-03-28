<script setup>
import Lifetime from '../components/Lifetime.vue'
</script>

<template>
  <div class="about">
    <div class="columns">
      <div>
        <div class="label">Here is me</div>
        <div class="image">
          <img
            src="../assets/myself/small.jpg"
            alt="Nicolay Apraksin, myself"
            class="small"
          >
          <img
            src="../assets/myself/big.jpg"
            alt="Nicolay Apraksin, myself"
            class="big"
          >
        </div>
      </div>
      <div>
        <div class="label">Here is my CV</div>
        <a>Click to download↓</a>
      </div>
    </div>
    <div>
      And here is my lifetime experience:

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
  padding: 0 10vw;
}
.label {
  margin-bottom: .5em;
}

.image {
  position: relative;
  display: inline-block;
  width: 350px;
  height: 350px;
}
.image .small {
  position: absolute;
  left: 0;
  top: 0;
  border-radius: var(--border-radius);
  overflow: hidden;
}
.image .big {
  position: absolute;
  z-index: 2;
  left: -296px;
  top: -177px;
  display: none;
  pointer-events: none;
  border-radius: var(--border-radius);
  overflow: hidden;
}
.image:hover .big {
  display: block;
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
  .image:hover .big {
    display: none;
  }
  .about > div:first-of-type {
    margin-top: 1em;
  }
}
</style>
