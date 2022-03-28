<script setup>
import Navigation from './components/Navigation.vue'
import Footer from './components/Footer.vue'
</script>

<template>
  <Navigation />

  <router-view />

  <Footer />
</template>

<style>
@font-face {
  font-family: 'Montserrat';
  src: url('./fonts/Montserrat-Regular.ttf');
  font-weight: normal;
}
@font-face {
  font-family: 'Montserrat';
  src: url('./fonts/Montserrat-Bold.ttf');
  font-weight: bold;
}

:root {
  --color-background: #222325;
  --color-background--dark: #17171a;
  --color-text: rgb(97, 103, 107);
  --color-text-accent: rgb(140, 149, 154);
  --color-border: rgb(61, 65, 66);

  --border-radius: 12px;

  --container-width: 96%;
}

body {
  margin: 0;
  font-size: 16px;
  line-height: 1.5;
}
#🚀 {
  font-family: 'Montserrat', Helvetica, Arial, sans-serif;
  color: var(--color-text);
  background: var(--color-background);
}
* {
  box-sizing: border-box;
}

button {
  display: inline-block;
  position: relative;
  padding: .5em 1em;
  border: 0;
  border-radius: var(--border-radius);
  font-size: 1em;
  user-select: none;
  transition: all .5s ease;
}
button:hover {
  cursor: pointer;
  font-style: italic;
}
a {
  color: var(--color-text);
  text-decoration: none;
}
a:hover {
  font-style: italic;
}

.project-link {
  text-align: center;
  font-size: 1.5em;
}

.page-container {
  margin: 0 auto;
  width: var(--container-width);
}
.page-container h1 {
  text-align: center;
  font-size: 3em;
  margin-bottom: 0;
  line-height: 1;
}
.page-container h2 {
  text-align: center;
  font-size: 1.5em;
  margin: 1.5em 0;
}
.page-container h2:first-child {
  margin-top: 0;
}
.page-container img {
  width: 100%;
  margin: 4em 0;
  overflow: hidden;
  border-radius: var(--border-radius);
}
.page-container img:first-child {
  margin-top: 0;
}

.text {
  font-size: 1.5em;
  margin: 0 auto;
  width: 800px;
}
.text.accent {
  color: var(--color-text-accent)
}
br {
  content: "";
  display: block;
  margin: 1em 0;
}

.tabs-menu {
  text-align: center;
  margin-top: 3em;
  margin-bottom: 2em;
}
.tabs-menu button {
  background: none;
  color: var(--color-text);
  font-size: 2em;
}
.tabs-menu button.active {
  color: var(--color-text-accent);
}
.tabs {
  margin-bottom: 8em;
}

.tags {
  list-style: none;
  margin: 0;
  padding: 0;
}
.tags li {
  display: inline-block;
  border-radius: 100px;
  border: 2px solid var(--color-text);
  padding: 4px 12px;
  font-weight: bold;
}
.tags li:not(:last-of-type) {
  margin-right: 8px;
  margin-bottom: 8px;
}

@media screen and (min-width: 768px) {
  :root {
    --container-width: 720px;
  }
}

@media screen and (min-width: 1300px) {
  :root {
    --container-width: 1200px;
  }
}

@media screen and (max-width: 767px) {
  body {
    font-size: 12px;
  }
  .text {
    width: 90%;
  }
}
</style>
