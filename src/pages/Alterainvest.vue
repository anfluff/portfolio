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
          AlteraInvest is a brokerage agency selling ready-made businesses and franchises.
          The main IT product is a business selling marketplace.
          <br>
          During my time at the company, I completed 3 major large projects.

          <ul>
            <li><b>Altbroker</b>: UX design and UI development for the brokerage agency's internal ERP system.</li>
            <li><b>IOS app design</b> for the businesses marketplace.</li>
            <li><b>Mobile web</b> for a side project of a company in the same area.</li>
          </ul>

          My areas of responsibility included:
          <ul>
            <li>Collecting product requirements from management</li>
            <li>Conducting UX research, interviewing employees to understand the subject area and their problems</li>
            <li>UX interface design</li>
            <li>Prototyping</li>
            <li>Design system development</li>
            <li>Building interfaces of design system elements.</li>
          </ul>
        </div>

        <Technologies :technologies="technologies" />
      </div>
      <div
        v-if="activeTab === 1"
        class="tab"
      >
        <div class="text">
          Marketplace management system, deals management, internal accounting.
          The interface solves the problems of several categories of users:
          <ul>
            <li>Brokers: managing objects and deals</li>
            <li>Managers: filling objects with content</li>
            <li>Franchisee: manage franchise ads</li>
            <li>Accounting: payroll</li>
            <li>Business Owners: view overall business statistics.</li>
          </ul>
        </div>
        <img src="../assets/projects/altera/altbroker/1.png" alt="Nicolay Apraksin / Altbroker / Login">

        <div class="text">
          The main interface is the list of brokers businesses.
          Sophisticated multifunctional search, editing important values on the fly, gamification interface elements for greater broker involvement.
          Ability to share objects, preview for clients, quick deals creation, management of publication on the marketplace.
          <br>
          The broker's salary based on percentage of the transaction amount.
          Therefore, it is important to make the interfaces as convenient as possible for maintainers. and variable, because each business and deal has more features.
        </div>
        <img src="../assets/projects/altera/altbroker/2.png" alt="Nicolay Apraksin / Altbroker / Objects list">

        <div class="text">
          A complex filter with the ability to save and then share filters.
        </div>
        <img src="../assets/projects/altera/altbroker/3.png" alt="Nicolay Apraksin / Altbroker / Filters">

        <div class="text">
          Quick preview of the object, discussion of objects with your team and potential clients.
        </div>
        <img src="../assets/projects/altera/altbroker/4.png" alt="Nicolay Apraksin / Altbroker / Object preview">

        <div class="text">
          Detail card of a business, with prompts guiding the actions of the broker.
          The more information is filled in, the higher its object in the marketplace.
        </div>
        <img src="../assets/projects/altera/altbroker/5.png" alt="Nicolay Apraksin / Altbroker / Object detail">

        <div class="text">
          Advanced search interface allows brokers within the system to search for similar businesses, deals, franchises.
        </div>
        <img src="../assets/projects/altera/altbroker/6.png" alt="Nicolay Apraksin / Altbroker / Search">

        <div class="text">
          <h2>Deals</h2>
          A deal is a long process of concluding an agreement between a seller and a buyer.
        </div>
        <img src="../assets/projects/altera/altbroker/8.png" alt="Nicolay Apraksin / Altbroker / Deal">
        <div class="text">
          The deal consist of many consecutive stages.
          Each one tells the broker what set of actions now needs to be performed:
          what documents to upload, what information to transfer to which party, what specialists need to be involved in the process.
        </div>
        <img src="../assets/projects/altera/altbroker/9.png" alt="Nicolay Apraksin / Altbroker / Deal progress">
        <div class="text">
          Tons of data editing interfaces.
        </div>
        <img src="../assets/projects/altera/altbroker/10.png" alt="Nicolay Apraksin / Altbroker / Deal info">
        <div class="text">
          All documents attached to the Deal are aggregated for quick access to them.
        </div>
        <img src="../assets/projects/altera/altbroker/11.png" alt="Nicolay Apraksin / Altbroker / Deal documents">
        <div class="text">
          <h2>Broker Profile</h2>
          The broker is the face of the company, visible to customers, so filling out the profile in a quality manner is extremely important.
        </div>
        <img src="../assets/projects/altera/altbroker/12.png" alt="Nicolay Apraksin / Altbroker / Broker profile">
        <img src="../assets/projects/altera/altbroker/13.png" alt="Nicolay Apraksin / Altbroker / Border profile edit">
      </div>
      <div
        v-if="activeTab === 2"
        class="tab"
      >
        <div class="text">
          IOS application for the company's marketplace.
          <br>
          The main app goal is to provide client an easy way to search for desired business.
          <br>
          The home screen allows you to quickly navigate to search, past in-app activity, or category selection.
          <br>
          The most important interface is a list of products.
          The table offers tinder-like interaction - swipe away the objects you are not interested in and add to your favorites those that you like.
          <br>
          The detailed page of business provides a visual overview of all important financial indicators, and offers to contact the broker for further details.
        </div>
        <img src="../assets/projects/altera/altera-ios/1.png" alt="Nicolay Apraksin / Altera IOS App / Index, Business list, Business detail">
        <div class="text">
          Another important interface is the filter.
          <br>
          Businesses have a large amount of details important to the buyer when choosing.
          <br>
          Filter presets can be saved for further usage. Also you can subscribe to filters to get notifications when suitable business appear.
        </div>
        <img src="../assets/projects/altera/altera-ios/2.png" alt="Nicolay Apraksin / Altera IOS App / Filters system">
        <div class="text">
          Favorites. All businesses liked by the client stores here
          <br>
          But how to compare business? For this purpose, a detailed comparison interface has been made: businesses are compared in pairs with data summarized by categories.
        </div>
        <img src="../assets/projects/altera/altera-ios/3.png" alt="Nicolay Apraksin / Altera IOS App / Favourite and Compare">
        <div class="text">
          Contacting the broker directly is another way of getting infromation.
          <br>
          All calls made are stored: its easy to recall some one than search for their contacts. Also interface displays contact information of brokers held your favourite busenesess.
          <br>
          After interacting with the broker, the client is invited to leave a review, which improves the quality of services.
        </div>
        <img src="../assets/projects/altera/altera-ios/4.png" alt="Nicolay Apraksin / Altera IOS App / Communication with Brokers">
      </div>
      <div
        v-if="activeTab === 3"
        class="tab"
      >
        <div class="text">
          Alterainvest side project called Findesk, aimed at selling ready-made businesses of certain categories, ebay for businesses.
          Here, clients personally place objects, raise them in the search results, and interact with each other.
          <br>
          List of products, rich filter system.
        </div>
        <img src="../assets/projects/altera/findesk/1.png" alt="Nicolay Apraksin / Findesk Mobile / Index, Business list, Filters">
        <div class="text">
          Detailed product card with detailed information, image gallery, favorites.
        </div>
        <img src="../assets/projects/altera/findesk/2.png" alt="Nicolay Apraksin / Findesk Mobile / Business detail, Favourite">
        <div class="text">
          Rich interface for comparing products added to your favorites. Pairwise comparison for similar categories of information.
        </div>
        <img src="../assets/projects/altera/findesk/3.png" alt="Nicolay Apraksin / Findesk Mobile / Business comparison">
        <div class="text">
          Login, registration, final state screens.
        </div>
        <img src="../assets/projects/altera/findesk/4.png" alt="Nicolay Apraksin / Findesk Mobile / Authentication">
      </div>
    </div>
  </div>
</template>

<style></style>
