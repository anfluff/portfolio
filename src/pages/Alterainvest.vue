<script setup>
import { ref } from 'vue'
import Technologies from '../components/Technologies.vue'

const technologies = ref({
  roles: [ 'product design', `interviewing`, `UX`, `prototyping`, `UI` ],
  design: [ 'figma', 'sketch', 'invision', 'framer', 'invision' ]
})

let activeTab = ref(0)
function setTab (value) {
  activeTab.value = value
}
</script>

<template>
  <div class="page-container">
    <h1>Alterainvest</h1>
    <div class="project-link">
      <a
        href="https://alterainvest.ru/"
        target="_blank"
      >
        alterainvest.ru→
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
        AltBroker
      </button>
      <button
        :class="{ active: activeTab === 2 }"
        @click="setTab(2)"
      >
        Altera IOS app
      </button>
      <button
        :class="{ active: activeTab === 3 }"
        @click="setTab(3)"
      >
        Findesk mobile web
      </button>
    </div>
    <div class="tabs">
      <div
        v-if="activeTab === 0"
        class="tab"
      >
        <div class="text accent">
          AlteraInvest — брокерское агенство занимающееся продажей готовых бизнесов и франшиз.
          Основной IT продукт — маркетплейс для объявлий о покупке-продаже.
          <br>
          За время работы в компании я выполнил 3 основных больших проекта.

          <ul>
            <li><b>Altbroker</b> — проектирование UX и отрисовка UI для внутренней системы брокерского агентства.</li>
            <li><b>IOS app design</b> для клиентского функционала агенства.</li>
            <li><b>Mobile web</b> Разработка дизайна мобильной версии для сайд проекта компании в той же области.</li>
          </ul>

          В мои сферы ответственности входило:
          <ul>
            <li>Сбор требований к продукту от руководства</li>
            <li>Проведение UX исследований, интервьирование сотрудников для понимания предметной области и проблем</li>
            <li>UX проектирование интерфейсов</li>
            <li>Прототипирование и проведение исследований, выполняет ли интерфейс поставленные задачи</li>
            <li>Разработка дизайн системы</li>
            <li>сборка интефрейсов по разработанным UX структурам из элементов дизайн системы.</li>
          </ul>
        </div>

        <Technologies :technologies="technologies" />
      </div>
      <div
        v-if="activeTab === 1"
        class="tab"
      >
        <div class="text">
          Система управления внешним маркетплейсом, ведение сделок, внутренняя бухгалтерия.
          Интерфейс решает задачи нескольких категорий пользователей:
          <ul>
            <li>брокеров — ведение объектов и сделок</li>
            <li>менеджеров — наполнение объектов контентом</li>
            <li>франчайзи — упраление франшизными объявлениями</li>
            <li>бухгалтерии — рассчет зарплат</li>
            <li>владельцев бизнеса — просмотр общей статистики бизнеса.</li>
          </ul>
        </div>
        <img src="../assets/projects/altera/altbroker/1.png" alt="Nicolay Apraksin / Altbroker / Login">

        <div class="text">
          Главным интерфейсм является таблица заказов брокеров.
          Сложный многофункциональный поиск, редактирование важных значений на лету, элементы геймификации интерфейса для большего вовлечения брокера.
          Возможность делиться объектами, предпросмотр для клиентов, быстрое заклчение сделки, управление публикацией на маркетплейсе.
          <br>
          Зарплата брокера — процент с суммы сделки. Поэтому важно сделать интерфейсы максимально удобными, сопровождающим
          и вариативным, ведь каждый бизнесс и сделка имеют больше количество особенностей.
        </div>
        <img src="../assets/projects/altera/altbroker/2.png" alt="Nicolay Apraksin / Altbroker / Objects list">

        <div class="text">
          Сложный фильтр с возможностями сохранения и последующего шэра сохраненных фильров.
        </div>
        <img src="../assets/projects/altera/altbroker/3.png" alt="Nicolay Apraksin / Altbroker / Filters">

        <div class="text">
          Быстрый предпросмотр объекта, обсуждение объектов со своей командой и потенциальными клиентами.
        </div>
        <img src="../assets/projects/altera/altbroker/4.png" alt="Nicolay Apraksin / Altbroker / Object preview">

        <div class="text">
          Карточка одного бизнеса, с подсками направляющими действия брокера. Чем больше заполнено информации, тем выше его объект в маркетплейсе.
        </div>
        <img src="../assets/projects/altera/altbroker/5.png" alt="Nicolay Apraksin / Altbroker / Object detail">

        <div class="text">
          Расширенный поиск, позвляющий брокерам внутри системы искать сходные бизнесы, сделки, франшизы.
        </div>
        <img src="../assets/projects/altera/altbroker/6.png" alt="Nicolay Apraksin / Altbroker / Search">

        <div class="text">
          <h2>Сделки</h2>
          Сделка — длительный процесс заключения соглашения между продавцом и покупателем.
        </div>
        <img src="../assets/projects/altera/altbroker/8.png" alt="Nicolay Apraksin / Altbroker / Deal">
        <div class="text">
          Сделка проходит поэтапно, на кажодм этапе система подсказывает брокерку какой набор действий сейчас необходимо совершить:
          какие документы загрузить, какую информацию передать какой стороне, какиих специалистов нужно подключить к процессу.
        </div>
        <img src="../assets/projects/altera/altbroker/9.png" alt="Nicolay Apraksin / Altbroker / Deal progress">
        <div class="text">
          Имеет в себе множество интерфейсов заполнения данных.
        </div>
        <img src="../assets/projects/altera/altbroker/10.png" alt="Nicolay Apraksin / Altbroker / Deal info">
        <div class="text">
          Все приложенные к сделке документы аггригируются для быстрого доступа к ним.
        </div>
        <img src="../assets/projects/altera/altbroker/11.png" alt="Nicolay Apraksin / Altbroker / Deal documents">
        <div class="text">
          <h2>Профиль брокера</h2>
          Брокер — лицо компании, видимое для клиентов, поэтому качественно заполнение профиля крайне важно.
        </div>
        <img src="../assets/projects/altera/altbroker/12.png" alt="Nicolay Apraksin / Altbroker / Broker profile">
        <img src="../assets/projects/altera/altbroker/13.png" alt="Nicolay Apraksin / Altbroker / Border profile edit">
      </div>
      <div
        v-if="activeTab === 2"
        class="tab"
      >
        <div class="text">
          IOS приложение для маркетплейса компании.
          <br>
          Главная задача — поиск пользователями объявлений и первое общение с брокерами.
          <br>
          Начальный экран позволят быстро перейти к поиску, прошлой активности внутри приложения, либо более классическому выбору категории.
          <br>
          Основным интерфейсом является список товаров. Здесь представлены полхоящие под поиск объявления с самой значимой информацией.
          Таблица предлагает взаимодействие tinder-like — отметайте свайпами не интересущие вас объекта и добавляйте в избранное те что вам приглянулись.
          <br>
          Детальная карточка объявления предоставляет в наглядном виде все важные показатели бизнеса, а также предлагает сразу же связаться с брокером для выяснения дальнейших деталей.
        </div>
        <img src="../assets/projects/altera/altera-ios/1.png" alt="Nicolay Apraksin / Altera IOS App / Index, Business list, Business detail">
        <div class="text">
          Вторым по значимости интерфейсом является фильтр.
          <br>
          Бизнесы обладают большим количеством параметров важных покупателю при выборе.
          <br>
          Пресеты фильтров можно сохранять и подписываться на уведомления по появлению новых объявлений.
          Пользователю дается возможность быстро перейти на последние фильтры для возврата к прошлой активности.
        </div>
        <img src="../assets/projects/altera/altera-ios/2.png" alt="Nicolay Apraksin / Altera IOS App / Filters system">
        <div class="text">
          Избранное. Выбранные объявления попадают сюда из списка бизнесов. Здесь также поддерживается свайп для удаления.
          <br>
          Как сравнить несколько выбранных объектов? Для этого сделан подробный интерфейс сравнения — объекты сравниваются попарно с сведением данных по категориям.
        </div>
        <img src="../assets/projects/altera/altera-ios/3.png" alt="Nicolay Apraksin / Altera IOS App / Favourite and Compare">
        <div class="text">
          По понравившимся объектам клиент связывается с брокером.
          <br>
          Все звонки мы собираем вместе для удосбтва повторного контакта, предлагаем сразу связаться с брокерами объектов из избранного.
          <br>
          После взаимодейсвтия с брокером клиенту предлагается оставить отзыв о нем, что повышает качество оказания услуг.
        </div>
        <img src="../assets/projects/altera/altera-ios/4.png" alt="Nicolay Apraksin / Altera IOS App / Communication with Brokers">
      </div>
      <div
        v-if="activeTab === 3"
        class="tab"
      >
        <div class="text">
          Сайд проект Alterainvest, направленный на продажу готового бизнеса определенных категорий, ebay для бизнессов.
          Здесь клиенты самолично размещают объекты, поднимают их в выдаче, взаимодействуют друг с другом.
          <br>
          Каталог объявлений, богатые система фильтров.
        </div>
        <img src="../assets/projects/altera/findesk/1.png" alt="Nicolay Apraksin / Findesk Mobile / Index, Business list, Filters">
        <div class="text">
          Детальная карточка товара с подробной информацией, галерея изображений, избранное.
        </div>
        <img src="../assets/projects/altera/findesk/2.png" alt="Nicolay Apraksin / Findesk Mobile / Business detail, Favourite">
        <div class="text">
          Богатый интерфейс для сравнения добавленных в избранное бизнесов. Попарное сравнение по сходным категориям информации.
        </div>
        <img src="../assets/projects/altera/findesk/3.png" alt="Nicolay Apraksin / Findesk Mobile / Business comparison">
        <div class="text">
          Логин, регистрация, экраны конечных состояний.
        </div>
        <img src="../assets/projects/altera/findesk/4.png" alt="Nicolay Apraksin / Findesk Mobile / Authentication">
      </div>
    </div>
  </div>
</template>

<style></style>
