<script setup>
import { ref } from 'vue'
import Intro from '../components/Intro.vue'
import ProjectTile from '../components/ProjectTile.vue'
import Technologies from '../components/Technologies.vue'

import hemagonImg from '../assets/projects/hemagon/hemagon-preview.svg'
import lsmpImg from '../assets/projects/lsmp/lsmp-preview.svg'
import kvetunImg from '../assets/projects/kvetun/kvetun-preview.svg'
import alteraImg from '../assets/projects/altera/altera-preview.svg'
import zzappImg from '../assets/projects/zzapp/zzapp.svg'
import evenediumImg from '../assets/projects/evenedium/evenedium2.svg'

const projects = ref([
  {
    title: 'Hemagon',
    subtitle: 'Platform for organizing and hosting hema-fencing tournaments',
    link: 'hemagon',
    image: hemagonImg,
    tags: [ 'architects', 'product design', 'frontend', 'backend', 'db', 'lead' ]
  },
  {
    title: 'LondonSMP',
    subtitle: 'Learning management system for online and traditional school',
    link: 'londonsmp',
    image: lsmpImg,
    tags: [ 'product design', 'frontend', 'lead' ]
  },
  {
    title: 'Kvetun',
    subtitle: 'Production and business management system for fencing equipment factory',
    link: 'kvetun',
    image: kvetunImg,
    tags: [ 'architects', 'product design', 'frontend', 'backend', 'db', 'lead' ]
  },
  {
    title: 'AlteraInvest',
    subtitle: 'Service for trading a ready-made business: internal product design and mobile applications',
    link: 'alterainvest',
    image: alteraImg,
    tags: [ 'product design', 'prototyping' ]
  }
])

const petProjects = ref([
  {
    title: 'Evenedium',
    subtitle: 'Classical strategic board game',
    link: 'evenedium',
    image: evenediumImg,
    noPadding: true,
    tags: [ 'concept', 'design' ]
  },
  {
    title: 'Zzapp',
    subtitle: 'Educational web quiz game about Dota2 mechanics',
    link: 'zzapp',
    image: zzappImg,
    tags: [ 'concept', 'product design', 'frontend', 'lead' ]
  }
])

const technologies = ref({
  'Industry knowledge': [
    'Product Design', 'Prototyping', 'UX', 'UI',
    'Frontend', 'Backend', 'DB',
    'Team Management'
  ],
  design: [ 'Figma', 'Sketch', 'Framer', 'Invision', 'Photoshop', 'Illustrator' ],
  code: [
    'JavaScript', 'TypeScript',
    'Vue', 'Nuxt', 'Node', 'Express', 'Npm', 'Webpack', 'Vite', 'Electron', 'SSR',
    'MongoDB', 'Mongoose',
    'CSS', 'PostCSS', 'Less', 'Sass',
    'Angular',
    'PHP', 'MySQL'
  ],
  environment: [ 'Bitbucket', 'git', 'Docker', 'Gitlab', 'Windows', 'Mac', 'Terminal' ]
})
</script>

<template>
  <Intro />

  <div class="projects-label">
    Latest projects
  </div>
  <div
    id="projects"
    class="projects"
  >
    <project-tile
      v-for="(project, index) in projects"
      :key="index"
      :title="project.title"
      :subtitle="project.subtitle"
      :link="project.link"
      :image="project.image"
      :tags="project.tags"
    />
  </div>

  <div class="projects-label">
    Elder pet projects
  </div>
  <div
    id="pet-projects"
    class="projects"
  >
    <project-tile
      v-for="(project, index) in petProjects"
      :key="index"
      :title="project.title"
      :subtitle="project.subtitle"
      :link="project.link"
      :image="project.image"
      :tags="project.tags"
      :no-padding="project.noPadding"
    />
  </div>

  <div class="projects-label">
    Tech tags
  </div>
  <div class="page-container">
    <Technologies :technologies="technologies" />
  </div>
</template>

<style scoped>
.projects {
  display: grid;
  grid-gap: 4em;
  grid-template-columns: repeat(auto-fit, 45%);
  padding: 3em 10vw;
  margin-bottom: 5em;
}
.projects-label {
  text-align: center;
  font-size: 2em;
}

.technologies {
  margin-top: 2em;
  margin-bottom: 4em;
}

@media screen and (max-width: 767px) {
  .projects {
    grid-template-columns: repeat(auto-fit, 100%);
    padding: 3em 2em;
  }
}
</style>
