<script setup>
import { ref } from 'vue'
import Technologies from '../components/Technologies.vue'

const technologies = ref({
  roles: [ 'concept', 'design' ],
  design: [ 'figma', 'adobe photoshop', 'adobe illustrator', 'adobe indesign' ]
})

let activeTab = ref(0)
function setTab (value) {
  activeTab.value = value
}
</script>

<template>
  <div class="page-container">
    <h1>Evenedium</h1>

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
        Full story
      </button>
    </div>
    <div class="tabs">
      <div
        v-if="activeTab === 0"
        class="tab"
      >
        <div class="text accent">
          After failing with <router-link to="zzapp" >ZZapp→</router-link>, I thought about how to make a game, but make the project final and achievable.
          The solution was obvious - make a board game!

          After discussing the idea with a friend, we quickly came to an understanding and got down to business.
          <br>
          Evenedium is a classic strategy board game. You play as a small tribe looking for their way in the big world.
          Explore the map, find artifacts from past eras, compete with opponents, and most importantly: write your own legendary epic about it!
          <br>
          The game is designed for 2-4 players. A game can take from 30 minutes to 2 hours.
          <br>
          My role was to develop the concept, rules and create the entire design.
        </div>

        <Technologies :technologies="technologies" />
      </div>
      <div
        v-if="activeTab === 1"
        class="tab"
      >
        <div class="text">
          You are the leader of a small Naakari tribe that is trying to survive and glorify itself in the ruthless wild lands of Camotlan, dug up by a long war. Your formation begins on the ruins of the past, and you build the foundation of your people here and now from the ruins of bygone cultures.
        </div>
        <img src="../assets/projects/evenedium/orb.png" alt="Nicolay Apraksin / Evenedium / World map">
        <div class="text">
          The game is played on a field consisting of hexes. Hexes are combined into 3x5 blocks. The hexes are connected by roads.
          Blocks can be connected in any way to have at least one road between them.
          This allows the playing field to be as varied as possible.
          <br>
          All hexes contain a landscape. Initially, it is closed, but you can spend the development of the hex and the landscape will open.
          With each development, a random event occurs: there can be either a find, a dilemma, or a challenge.
          <br>
          Around the field laid hexes with achievements. The legendary epic of the tribe is formed by these.
        </div>
        <img src="../assets/projects/evenedium/1.png" alt="Nicolay Apraksin / Evenedium / World map">

        <div class="text">
          The whole visual style is based on the opposition of two elements - magical (teal, smooth, fluid) and steampunk (red, sharp, rough).
        </div>
        <img src="../assets/projects/evenedium/2.png" alt="Nicolay Apraksin / Evenedium / Fast start">

        <div class="text">
          The game comes with two rulebooks: a Quick Start and Full Rules.
          In a Quick Start, we tried to clearly and colorfully describe the main concepts of the game.
        </div>
        <img src="../assets/projects/evenedium/1_a.png" alt="Nicolay Apraksin / Evenedium / Fast start: inside ">
        <div class="text">
          The Full Rules fully describe all the mechanics and their features.
        </div>
        <img src="../assets/projects/evenedium/3.png" alt="Nicolay Apraksin / Evenedium / Full rules">
        <div class="text">
          A strategy game, of course, involves the construction of buildings and hiring units. A hint card will tell you the costs and features.
          On its reverse side, the player will find all the achievement: the verses of the song.
        </div>
        <img src="../assets/projects/evenedium/4.png" alt="Nicolay Apraksin / Evenedium / Player helper">
        <div class="text">
          Event cards. All but four are divided in half. The upper part describes the ongoing event: either a find, or a dilemma, or a challenge.
          The lower one shows an improvement. It could be magical or technological. Under special conditions it can be adopted by the player.
          <br>
          The four exclusion cards are rare relics that can strengthen the player's tribe.
        </div>
        <img src="../assets/projects/evenedium/5.png" alt="Nicolay Apraksin / Evenedium / Action cards">

        <div class="text">
          Our tribe is not human at all. It's Naakari! Creatures living in an unusual world all their lives.
          Their body can adapt according to need, and then their appearance and the appearance of their buildings have completely unusual outlines.
        </div>
        <img src="../assets/projects/evenedium/6.png" alt="Nicolay Apraksin / Evenedium / Icons">

        <div class="text">
          Creature tokens are colored on a black background. Building tokens are black on color.
          The reverse side of the tokens is a stroke. The tokens are turned over when they have performed all the actions possible in this turn.
        </div>
        <img src="../assets/projects/evenedium/7.png" alt="Nicolay Apraksin / Evenedium / Creatures and buildings tokens">
        <img src="../assets/projects/evenedium/game.jpg" alt="Nicolay Apraksin / Evenedium / Game printed">
      </div>
    </div>
  </div>
</template>

<style></style>
