<script setup>
import { ref } from 'vue'
import Technologies from '../components/Technologies.vue'

const technologies = ref({
  roles: [ 'concept', 'architects', 'product design', 'frontend', 'lead' ],
  design: [ 'adobe illustrator', 'adobe photoshop' ],
  frontend: [ 'angular2', 'webpack', 'scss' ],
})

let activeTab = ref(0)
function setTab (value) {
  activeTab.value = value
}
</script>

<template>
  <div class="page-container">
    <h1>Zzapp</h1>

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
          Браузерная квиз игра для обучения игре в Dota 2.
          <br>
          Dota 2 является одной из лидирующих дисциплин с миллионами игроков.
          Киберспортсмены получают значимые призовые, рядовые игроки видят эти возмоности и стремятся в их ряды.
          <br>
          Мы хотели создать игру, которая помогала бы этим игрокам расти, а также скрашивала их досуг среди так любимого ими антуража.
          Планировали монетизироваться через внутреигровые покупки и трафик.
          <br>
          Разрабатывали вдвоем с товарищем. На мне был дизайн, фронтенд и управление проектом. На товарище бекенд.
          <br>
          Проект мы разработали и довели до логической точки, запустились, получили позитивные отзывы игроков.
          Дальше натолкнулись необзодимость постоянного обновления контента, на что требуется финансирование, которого у нас не было.
        </div>

        <Technologies :technologies="technologies" />
      </div>
      <div
        v-if="activeTab === 1"
        class="tab"
      >
        <div class="text">
          Игроки в Dota 2 настолько увлечены своим хобби, что все свободное время тратят на игру.
          Когда они не играю, они потребляют сопутствующей игре контент — просмотр стримов турниров и других известных игроков.
          <br>
          Просмотр стримов — пассивное дело.
          Тут то на сцену и выходит наша игра.
          Зачем просто смотреть стрим, если можно смотреть стрим и тут же играть?
          <br>
          Главный экран игры предлагал выбрать интересующий тебя стрим.
        </div>
        <img src="../assets/projects/zzapp/1.png" alt="Nicolay Apraksin / Zzapp / Index">
        <div class="text">
          Cтрим открывается на часть экрана, а на оставшемся пространстве запускается игра.
        </div>
        <img src="../assets/projects/zzapp/1a.png" alt="Nicolay Apraksin / Zzapp / Stream">
        <div class="text">
          Второй сценарием использования игры — занять время, когда компьютер недоступен.
          <br>
          Игра полносностью адаптирована под мобильные платформы, которые всегда под рукой:
          в транспорте, в перерывах между учебой, перед сном.
        </div>
        <img src="../assets/projects/zzapp/mobile2.png" alt="Nicolay Apraksin / Zzapp / Mobile game">

        <div class="text">
          <h2>О самой игре</h2>
          Игра построена на метафорах из Dota 2.
          <br>
          Каждый сценарий представляет из себя последовательность этапов. Прошел один — выбирай куда двигаться дальше.
        </div>
        <img src="../assets/projects/zzapp/2.png" alt="Nicolay Apraksin / Zzapp / Scenario">

        <div class="text">
          Этап состоит из последовательности вопросов.
          Каждый вопрос поставлен в соответсвие с игровым существом. Каждое существо — свой тип вопроса.
          Выбор одного из двух вариантов, из четырех, выбор неколько их четырех ответов и тд.
          <br>
          Вопросы на время, не успел — считай неверно ответил!
          <br>
          Игра идет до тех пор, пока у игрока не закончились единцы здоровья.
          Каждый неверно отвеченный вопрос снимает одну единицу здоровья.
          <br>
          За каждый верно отвеченынй вопрос игрок получает внутреннюю валюту.
          За неё в игровой лавке можно купить предметы, дающие дополнительные возможности — больше здоровья на старте, восстановление здоровья по ходу игры, пропуск вопроса.
        </div>
        <img src="../assets/projects/zzapp/3.png" alt="Nicolay Apraksin / Zzapp / Game">

        <div class="text">
          Закончилось время? Потерял здоровье.
        </div>
        <img src="../assets/projects/zzapp/4.png" alt="Nicolay Apraksin / Zzapp / Timeout">

        <div class="text">
          Неверно ответил? Упс.
        </div>
        <img src="../assets/projects/zzapp/5.png" alt="Nicolay Apraksin / Zzapp / Wrong answer">

        <div class="text">
          Правильный ответ! Иди дальше, а также получи немного вознаграждения — за тип вопроса, а также за оставшееся время.
        </div>
        <img src="../assets/projects/zzapp/6.png" alt="Nicolay Apraksin / Zzapp / Write answer">

        <div class="text">
          Внутриигровой магазин с предметами. Накапливай игровую валюту, трать на улучшения!
        </div>
        <img src="../assets/projects/zzapp/7.png" alt="Nicolay Apraksin / Zzapp / Shop">

        <div class="text">
          <h2>Управление</h2>
          Комплексные административные интерфейсы позволяют редактировать сценарии, категории вопросов, вопросы и тд.
          <br>
          Вопросы в игре касаются контента из самой Dota 2, в них мы выводим названия, иконки, значения.
          Мы сделали у себя базу этих знаний — героев, существ, их способностей, предметов.
          <br>
          При создании вопроса можно воспользоваться поисковым контекстым меню для подставки подходящией сущности.
        </div>
        <img src="../assets/projects/zzapp/9.png" alt="Nicolay Apraksin / Zzapp / Question creation">
        <div class="text">
          И конечно же мы следим за игроками!
          <br>
          Каждая ваша игра записана — все ответы, потраченное время, стратегия поведения.
          <br>
          На основе этих данных мы хотели сочинить инфорграфику показывающую познания игроков в тематиках Dota 2.
        </div>
        <img src="../assets/projects/zzapp/8.png" alt="Nicolay Apraksin / Zzapp / Game history">
      </div>
    </div>
  </div>
</template>

<style></style>
