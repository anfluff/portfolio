<script setup>
defineProps({
  title: String,
  subtitle: String,
  image: String,
  tags: Array,
  link: String,
  noPadding: Boolean
})
</script>

<template>
  <div class="project-tile">
    <div class="image">
      <img
        :src="image"
        :alt="title"
        :class="{ 'no-padding': noPadding }"
      >
      <div class="placeholder">
        Read more
      </div>
    </div>
    <h2>{{ title }}</h2>
    <p>{{ subtitle }}</p>
    <ul
      v-if="tags.length"
      class="tags"
    >
      <li
        v-for="(tag, index) in tags"
        :key="index"
        class="tag"
      >
        {{ tag }}
      </li>
    </ul>
    <router-link
      :to="link"
      class="link"
    >
      {{ title }}
    </router-link>
  </div>
</template>

<style scoped>
.project-tile {
  position: relative;
}
.image {
  background: var(--color-background--dark);
  height: 0;
  padding-top: 56.25%;
  border-radius: var(--border-radius);
  overflow: hidden;
  position: relative;
}
.image img {
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  padding: 4em;
}
.image img.no-padding {
  padding: 0;
  object-fit: cover;
}

.image .placeholder {
  display: none;
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  align-items: center;
  justify-content: center;
  font-size: 3em;
  font-style: italic;
}
h2 {
  margin-top: .2em;
  margin-bottom: 0;
  font-size: 3em;
}
p {
  margin-top: .5em;
  margin-bottom: 1em;
  font-size: 1.5em;
}

.link {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  opacity: 0;
}
.project-tile:hover h2 {
  color: var(--color-text-accent);
}
.project-tile:hover .image .placeholder {
 display: flex;
}
.project-tile:hover .image img {
  opacity: 0;
  filter: grayscale(100%);
}
</style>
