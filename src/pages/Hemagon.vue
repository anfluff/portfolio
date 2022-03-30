<script setup>
import { ref } from 'vue'
import Technologies from '../components/Technologies.vue'

const technologies = ref({
  roles: [ 'concept', 'architects', 'product design', 'frontend', 'backend', 'db', 'lead' ],
  design: [ 'figma' ],
  frontend: [ 'vue2', 'webpack', 'less', 'electron' ],
  backend: [ 'node', 'express' ],
  db: [ 'mongodb', 'mongoose' ],
  infrastructure: [ 'git', 'docker', 'bitbucket', 'clickup' ]
})

let activeTab = ref(0)
function setTab (value) {
  activeTab.value = value
}
</script>

<template>
  <div class="page-container">
    <h1>Hemagon</h1>
    <div class="project-link">
      <a
        href="https://hemagon.com"
        target="_blank"
      >
        hemagon.com→
      </a>
    </div>

    <div class="tabs-menu">
      <button
        :class="{ active: activeTab === 0 }"
        @click="setTab(0)"
      >
        Overview
      </button>
      <button
        :class="{ active: activeTab === 1 }"
        @click="setTab(1)"
      >
        Brief preview
      </button>
      <button
        :class="{ active: activeTab === 2 }"
        @click="setTab(2)"
      >
        Full story
      </button>
      <button
        :class="{ active: activeTab === 3 }"
        @click="setTab(3)"
      >
        Tech stuff
      </button>
    </div>
    <div class="tabs">
      <div
        v-if="activeTab === 0"
        class="tab"
      >
        <img src="../assets/projects/hemagon/intro_2.png" alt="Nicolay Apraksin / Hemagon / Intro">

        <div class="text accent">
          Hemagon is a sports framework focused on HEMA fencing.
          <br>
          The main objective of the platform is to create a unified infrastructure for organizers and participants, as well as to provide an opportunity to track the progress of their skills.
          <br>
          I've developed it by myself
          For 4 years, the program has grown from a side project into a full-fledged system, which has become the standard in Russia, and is also gradually moving into Europe
        </div>

        <Technologies :technologies="technologies" />
      </div>
      <div
        v-if="activeTab === 1"
        class="tab"
      >
        <img src="../assets/projects/hemagon/0.png" alt="Nicolay Apraksin / Hemagon / Index page">
        <div class="text">
          Hemagon consists of several interconnected layers solving different problems of community members
          <br>
          The first layer allows tournament organizers <b>to describe the rules of events</b>.
          There are many types of weapons in fencing, for each of them the sparring rules are different.
          A tournament may consist of dozen of nominations. Hemagon allows to build the scheme precizely describing any event.
          <br>
          The second layer is the hosting of the tournament itself. The most important element of the fights is scoring.
          On their basis, <b>a rating of fighters compiles</b>, selecting participants moving from stage to stage, and so the winners are determined.
          This process is controlled by Hemagon: the operators of the fencing grounds take into account the points, and the organizer manages the entire course of the event through its interface.
          <br>
          The third level is <b>realtime presentation of the tournament</b>.
          Scores gathered on the fencing rings are displayed online in the tournament brackets.
          It allows participants and spectators to follow the tournament in real time.
          After the tournament, fighters can see their victories, points scored and statistics of the event.
          <br>
          The fourth level is <b>general statistics</b> for all time.
          The results of each event affect the positions of fighters in the overall ranking.
          Collected data allows to visualize personal improvements and achievements of fighters.
          <br>
          Thus Hemagon is a full cycle platform for the fencing industry.
        </div>
        <img src="../assets/projects/hemagon/11.png" alt="Nicolay Apraksin / Hemagon / Stream caption">
      </div>
      <div
        v-if="activeTab === 2"
        class="tab"
      >
        <div class="text">
          In 2008 I took up historical fencing, by 2010 I competed on my first tournament.
          At that time, the tournaments were held on paper and I realized that it doesn't suite the moment. Everything should be online.
          Unfortunately my developing experience was too poor.
          <br>
          In 2017 I moved to another fencing team.
          Near at hand they had to host the main Russian longsword tournament: FechtTerra.
          <br>
          I had already become a fairly experienced developer.
          I realized that my time had come and claimed that I would make my own system to host the tournament.

          <h2>Hemagon 1.0</h2>
          There was not much time, so the solution had to be fast and reliable.
          <b>I developed the desktop application on electron + vue</b>: score counting and a ranking system to manage the tournament.
          <br>
          Tournament was run on my platform.
          <b>The system reduced the duration of the tournament, as all calculations were instant</b>.
          The organizers were delighted.
          <br>
          It became clear that by the next year I need to develop a full-fledged version of this program: consistant backend, realtime data exchange, and so on.

          <h2>Hemagon 2.0</h2>
          The fist version was totaly offline: only the organizers had all the data but the fighters did not have access to them.
          <br>
          <b>The obvious step was to create an accessible onine platform</b>,
          receiving in realtime all the data from the tournament and sharing it to participants, organisers and spectators.
          <br>
          So the development begin...

          <h2>Hemagon now</h2>
          Fencing tournament is a set of consecutive stages.
          <br>
          The most popular scheme is the group stage followed by playoffs.
        </div>
        <img src="../assets/projects/hemagon/2a.png" alt="Nicolay Apraksin / Hemagon / Tournament">
        <div class="text">
          Based on the tournament results, an overall rating by weapon is formed.
          <b>The rating is calculated according to the Glicko2 system and updates automatically</b> on tournament ending.
        </div>
        <img src="../assets/projects/hemagon/4.png" alt="Nicolay Apraksin / Hemagon / Rating">
        <div class="text">
          You can learn a lot about each fighter: their achievements, favorite weapons, win percentage and more.
        </div>
        <img src="../assets/projects/hemagon/6a.png" alt="Nicolay Apraksin / Hemagon / Fighter profile">

        <div class="text">
          <b>Big data</b> made it possible to build interesting graphs.
          <br>
          You can see <b>a social graph</b> below. It represents the proximity of the fighters to each other.
        </div>
        <img src="../assets/projects/hemagon/6b.png" alt="Nicolay Apraksin / Hemagon / Fighter profile">

        <div class="text">
          <h2>Organizer interface</h2>
          Organisers general scenario is <b>creating and describing tournaments</b>.
          Each tournament nomination has many settings that affect the behavior of the system.
          <br>
          Most important one is <b>the rating mode</b>: way of calculating the rating. One values a win percentage, the other depends on match points.
          <br>
          Are double hits important? Do Warnings and appeals count?
        </div>
        <img src="../assets/projects/hemagon/7a.png" alt="Nicolay Apraksin / Hemagon / Nomination creation">
        <div class="text">
          After creating a nomination, the organiser <b>sets its stages</b>.
          <br>
          Most popular scheme is pools to eliminations.
          The organizer can create pools <b>automatically based on the rating</b> or their own will
          <br>
          The drag-and-drop scheme is most suitable for this scenario.
        </div>
        <img src="../assets/projects/hemagon/7.png" alt="Nicolay Apraksin / Hemagon / Pool creation">
        <div class="text">
          <h2>Hosting a tournament</h2>
          Secretary follows the referee commands and adds fights scores to the db.
          <br>
          <b>Usability of the operator interface</b> was most important factor: all actions are on hotkeys, there is no need in mouse.
          <br>
          <b>Scoring history</b> is accessible.
        </div>
        <img src="../assets/projects/hemagon/9.png" alt="Nicolay Apraksin / Hemagon / Fight interface">
        <div class="text">
          Points are shown on the screen facing towards the fighters.
          <br>
          <b>contrasting colors</b> are used, points are displayed <b>large size</b>, because the fighters look at the monitor from afar.
          <br>
          Who fights next? See below.
        </div>
        <img src="../assets/projects/hemagon/10.png" alt="Nicolay Apraksin / Hemagon / Fight demo">
        <div class="text">
          Also, Hemagon <b>implemented a caption for the stream</b>.
          <br>
          <b>The server receives the data realtime</b> so the caption updates instantly.
        </div>
        <img src="../assets/projects/hemagon/11.png" alt="Nicolay Apraksin / Hemagon / Stream caption">
      </div>
      <div
        v-if="activeTab === 3"
        class="tab"
      >
        <div class="text">
          Technically, the whole system consists of 3 levels -
          <ol>
            <li>
              <b>Backend</b> where all data are processed and stored.
              Developed on <b>nodejs + expressjs</b> with <b>mongodb + mongoose</b> database.
            </li>
            <li>
              Public frontend is developed on <b>vue2</b> and built with <b>webpack</b>.
              The user interface is localized in two languages - ru and en.
              The user part is fully responsive for mobile devices, since 70% of users prefer surfing on the go.
            </li>
            <li>
              <b>App</b> for ring operators is built on <b>electron + vue2</b>.
            </li>
          </ol>
        </div>
        <img src="../assets/projects/hemagon/tech_1.svg" alt="Nicolay Apraksin / Hemagon / Tech structure">
        <div class="text">
          There are 5 categories of users in the system:
          <ol>
            <li>
              <b>Guest user</b>. They can view information about tournaments, spectate the progress of the tournament, and view statistics.
            </li>
            <li>
              <b>Authorized user</b>. They can manage their profile, as well as apply for tournaments.
            </li>
            <li>
              <b>Tournament organizer</b> has the right to create tournaments and manage them.
            </li>
            <li>
              <b>Secretary</b> records results of fights by the desktop application.
              In addition, the organizer may to create users and fencing teams.
            </li>
            <li>
              <b>Administrator</b> has full access to the system with the right to edit all the data: tournaments, users, teams, weapon types.
              The administrator also has an extended editing interfaces: mass processing, replacements, joins, statistics and analytics scripts.
            </li>
          </ol>
        </div>
        <img src="../assets/projects/hemagon/tech_2.svg" alt="Nicolay Apraksin / Hemagon / Logic structure">
        <div class="text">
          The proper decomposing of the data domain was crucial.
          <br>
          The rules of fencing tournaments vary greatly and it was necessary to develop a data structure that will be adaptive to all these changes.
          <br>
          Through analysis, the following <b>modular system</b> was developed:
          <br>
          Tournament > Nomination > Stage > Pool > Fight.
          <br>
          НThe nomination consists of variable stages in any order connected by in-out parameters: the number of fighters and the rating system.
          Pool entity makes it easy to describe both the Group Stage and the Swiss system, and with a special index management it fits perfectly to the Olympic system.
        </div>
      </div>
    </div>
  </div>
</template>

<style></style>
