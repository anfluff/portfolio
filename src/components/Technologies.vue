<script setup>
defineProps({
  technologies: Object
})
</script>

<template>
  <div class="technologies">
    <div
      v-for="(tech, techLabel) in technologies"
      :key="techLabel"
      class="technology"
    >
      <div class="label">
        {{ techLabel }}
      </div>
      <ul class="tags">
        <li
          v-for="(tag, index) in tech"
          :key="index"
        >
          <div class="tag">
            {{ tag }}
          </div>
        </li>
      </ul>
    </div>
  </div>
</template>

<style scoped>
.technologies {
  border-top: 1px solid var(--color-border);
}
.technologies {
  margin-top: 5em;
}

.technology {
  display: flex;
  align-items: baseline;
  padding: 1em 0;
  border-bottom: 1px solid var(--color-border);
}
.technology .label {
  flex: 0 1 30%;
  max-width: 200px;
  font-size: 1.5em;
  text-transform: capitalize;
}
.technology .tags {
  flex: 1 0 70%;
}

@media screen and (max-width: 768px) {
  .tags {
    display: flex;
    flex-direction: column;
  }
}
</style>
