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
          После неудачи с <router-link to="zzapp" >ZZapp→</router-link> я задумался как сделать игру, но сделать проект конечным и реализовываемым.
          Решение оказалось очевидным — сделать настольну игру!

          Обсудив идею с товарищем мы быстро пришли к пониманию и взялись за дело.
          <br>
          Evenedium — классическая стратегиеская настольная игра. Вы играете за небольшое племя, ищущее свой путь в большом мире.
          Исследуйте игровой мир, находите артефакты былых эпох, конкурируйте оппонентов, а главное — напишите об этом свой легендарный эпос!
          <br>
          Игра рассчитана на 2-4 игроков. Партия может занимать от 30 минут до 2х часов.
          <br>
          Моей ролью была разработка концепции, правил и создание всего дизайна.
        </div>

        <Technologies :technologies="technologies" />
      </div>
      <div
        v-if="activeTab === 1"
        class="tab"
      >
        <div class="text">
          Вы — вождь небольшого племени наакари, которое пытается выжить и_прославить себя в безжалостных диких землях Камотлана, перекопанных давней войной. Ваше становление начинается на руинах прошлого, и фундамент своего народа вы складываете здесь и сейчас из обломков ушедших культур.
        </div>
        <img src="../assets/projects/evenedium/orb.png" alt="Nicolay Apraksin / Evenedium / World map">
        <div class="text">

          Игра идет на поле состящем из гексов. Гексы объединяются в блоки 3х5. Гексы соединены дорогами.
          Блоки можно соединить любым образом, чтобы между ними оказалать хоть одна дорога.
          Это позволяет игровому полю быть максимально вариативным.
          <br>
          Все гексы содержат в себе ланшафт. Изначально он закрыт, но можно провести освоение гекса и ландшафт откроется.
          При кажном освоении происходит случайное событие — там может быть либо находка, либо дилема, либо испытание.
          <br>
          Вокруг поля раскладываются гексы с достяжениями, из которых формируется легендарный эпос племени.
        </div>
        <img src="../assets/projects/evenedium/1.png" alt="Nicolay Apraksin / Evenedium / World map">

        <div class="text">
          Весь визуальный стил строется на противостоянии двух стихий -
          магической (бирюзовой, плавной, текучей) и стимпанковой (рыжей, острой, грубой).
        </div>
        <img src="../assets/projects/evenedium/2.png" alt="Nicolay Apraksin / Evenedium / Fast start">

        <div class="text">
          К игре прикладываются две брошюры — быстрый старт и полные правила.
          В быстром старте мы постарались наглядно и красочно описать основные концепции игры.
        </div>
        <img src="../assets/projects/evenedium/1_a.png" alt="Nicolay Apraksin / Evenedium / Fast start: inside ">
        <div class="text">
          В полных правилах полноценно описываются все механики и их особенности.
        </div>
        <img src="../assets/projects/evenedium/3.png" alt="Nicolay Apraksin / Evenedium / Full rules">
        <div class="text">
          Стратегическая игра конечно же подразумевает строительство зданий. Карта подсказка расскажет стоимость и характеристики.
          На обратной её стороне игрок найдет все достяжения — куплеты песни.
        </div>
        <img src="../assets/projects/evenedium/4.png" alt="Nicolay Apraksin / Evenedium / Player helper">
        <div class="text">
          Карты событий. Все, кроме четырех, поделены пополам — верхняя часть описывает происходящее событие — либо находку, либо дилему, либо испытание.
          Нижняя же показывает улучшение — магическое или технологическое — которую при особых условиях может быть выучено игроком.
          <br>
          Четыре карты исключения — редкие реликты, которые могут усилить племя игрока.
        </div>
        <img src="../assets/projects/evenedium/5.png" alt="Nicolay Apraksin / Evenedium / Action cards">

        <div class="text">
          Наше племя совсем не люди. Это наакари! Существа всю жизнь живушие в необычноым мире.
          Их тело может адаптироваться по нужды, а потом и сам их внешний вид и вид их построек имеет совершенно необычные очертания.
        </div>
        <img src="../assets/projects/evenedium/6.png" alt="Nicolay Apraksin / Evenedium / Icons">

        <div class="text">
          Фишки существ — цветные на черном фоне. Фишки зданий — черные на цветом.
          Оборотная сторона фишек — штрих. Переворачиваются фишки, когда совершили все действия возможные в данном ходу.
        </div>
        <img src="../assets/projects/evenedium/7.png" alt="Nicolay Apraksin / Evenedium / Creatures and buildings tokens">
        <img src="../assets/projects/evenedium/game.jpg" alt="Nicolay Apraksin / Evenedium / Game printed">
      </div>
    </div>
  </div>
</template>

<style></style>
