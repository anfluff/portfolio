<script setup>
</script>

<template>
  <header>
    <router-link to="/">
      Home
    </router-link>
    <router-link to="/#projects">
      Projects
    </router-link>
    <router-link to="about">
      About
    </router-link>
  </header>
</template>

<style scoped>
header {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  align-items: center;
  background: var(--color-background);
  padding: 2em 5em;
}

a {
  font-size: 2em;
}

@media screen and (max-width: 767px) {
  header {
    padding: 2em 2em;
  }
}
</style>
