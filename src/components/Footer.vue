<script setup>
</script>

<template>
  <footer>
    <div class="logo">Nicolay Apraksin</div>
    <ul class="contacts">
      <li>
        <a
          href="mailto:nickolayanatolievich@gmail.com"
        >nickolayanatolievich@gmail.com</a>
      </li>
      <li>
        <a
          href="https://t.me/afluff"
          target="_blank"
        >t.me/afluff</a>
      </li>
    </ul>
  </footer>
</template>

<style scoped>
footer {
  background: var(--color-background--dark);
  color: var(--color-text);
  padding: 8em;
  text-align: center;
}
.logo {
  font-size: 3em;
  font-weight: bold;
}

.contacts {
  list-style: none;
  padding: 0;
  margin: 0;
  font-size: 2em;
}
.contacts li {
  margin-top: .5em;
}

@media screen and (max-width: 767px) {
  footer {
    padding: 4em;
  }
  .contacts {
    font-size: 1.5em;
  }
}
</style>
