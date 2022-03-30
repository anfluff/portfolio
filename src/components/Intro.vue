<script setup>
</script>

<template>
  <div class="intro">
    <div>
      <div class="greetings">Hi, i am</div>
      <h1>Nicolay Apraksin</h1>
    </div>
    <div class="description">
      Highly motivated IT enthusiast 👹.
      <br>
      I strive to transform data-swamps overflowing with processes 💀 into understandable and convenient structures and interfaces 💫.
      Product development is my main goal. Delivering nessesary functionality to the client is on top of everything.
      <br>
      Most focused on
      <div class="popover-container">
        <div class="popover-trigger">
          Product Design
        </div>
        <div class="popover">
          💛 Figma One Love
        </div>
      </div>.
      I implement and polish interfaces on
      <div class="popover-container">
        <div class="popover-trigger">
          frontend
        </div>
        <div class="popover">
          Current stack:
          <ul class="tags">
            <li class="tag">vue3</li>
            <li class="tag">vite</li>
          </ul>
          <div>
            Elder tech:
            <ul class="tags">
              <li class="tag">vue2</li>
              <li class="tag">angular2</li>
              <li class="tag">angular1</li>
              <li class="tag">webpack</li>
            </ul>
          </div>
        </div>
      </div>
      myself as needed without fuss with approvals.
      In my own projects, I also deal with the
      <div class="popover-container">
        <div class="popover-trigger">
          backend and databases
        </div>
        <div class="popover">
          Current stack:
          <ul class="tags">
            <li class="tag">node</li>
            <li class="tag">express</li>
            <li class="tag">mongodb</li>
            <li class="tag">mongoose</li>
          </ul>
          <div>
            Elder tech:
            <ul class="tags">
              <li class="tag">php</li>
              <li class="tag">zend</li>
              <li class="tag">mysql</li>
            </ul>
          </div>
        </div>
      </div>.
      <br>
      If the team has no leader, I can be the one: 10+ years of experience granted me the knowledge of all the interprofession languages 🧑‍🌾 and how product should be done.
      During my practice, I managed teams up to five developers.
      <br>
      Currently based in Saint-Petersburg Russia.
      <br>
      Strive to relocate! ❤️🛫
    </div>
  </div>
</template>

<style scoped>
.intro {
  display: flex;
  flex-direction: column;

  justify-content: center;
  align-items: center;

  font-size: 2em;
  margin-top: 3em;
}

.greetings {
  text-align: center;
}
h1 {
  font-size: 3em;
  margin-bottom: 0;
  margin-top: 0;
  line-height: 1;
  text-align: center;
}
.description {
  margin: 3em 0;
  width: 1000px;
}

.popover-container {
  display: inline-block;
  position: relative;
}
.popover-container .popover-trigger {
  user-select: none;
  border-bottom: 1px dashed var(--color-text);
}
.popover-container .popover {
  visibility: hidden;
  opacity: 0;
  pointer-events: none;
  z-index: -1;
  width: 450px;

  position: absolute;
  background: var(--color-background--dark);
  color: var(--color-text-accent);
  border-radius: var(--border-radius);
  padding: 1em;
  font-size: .7em;
}
.popover-container:hover .popover-trigger {
  color: var(--color-text-accent);
  cursor: pointer;
}
.popover-container:hover .popover {
  visibility: visible;
  opacity: 1;
  pointer-events: auto;
  z-index: 2;
}

@media screen and (max-width: 767px) {
  .popover-container .popover {
    width: 80vw;
  }
  .description {
    width: 90%;
  }
}
</style>
