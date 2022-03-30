<script setup>
import { ref } from 'vue'
import Technologies from '../components/Technologies.vue'

const technologies = ref({
  roles: [ 'architects', 'product design', 'frontend', 'backend', 'db', 'lead' ],
  design: [ 'figma' ],
  frontend: [ 'vue3', 'vite', 'less' ],
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
    <h1>Kvetun</h1>

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
        v-if=" activeTab === 0"
        class="tab"
      >
        <div class="text accent">
          Custom production and business management system for fencing equipment factory.
          <br>
          The product was developed to improve a performance of two company departments:
          <ul>
            <li>Marketing. Entering new client orders, describing requirements and specifications. Communication with production department.</li>
            <li>Production. Production plan, order maintenance in the manufacturing process, production limits, materials calculator calculation.</li>
          </ul>
          The system made it possible to <b>optimize the performance of the marketing department</b>: Reduced the time from the client's request to the implementation of the order.
          Establish communication between departments through a system of tasks, gave statistical information for long-term planning.
          <br>
          I've started the development alone, but through time I moved to the position of <b>project manager</b>, delegating all the work to hired developers.
        </div>

        <Technologies :technologies="technologies" />
      </div>
      <div
        v-if=" activeTab === 1"
        class="tab"
      >
        <div class="text">
          The integration of the system into production took place as it was developed. It solved the critical issues of production.
          <br>
          Transferring the product base to the platform required a lot of time for managers,
          to facilitate the work, the emphasis in the visual solution was on usability: content and actions on the first plan, no distracting graphic elements.

          <h2>Orders</h2>
          The central component of the system is the Order as the basic unit of business.
          For the head of the sales department, it is important to see the number of completed orders, the production stages, and the amount of revenue.
        </div>
        <img src="../assets/projects/kvetun/0.png" alt="Nicolay Apraksin / Kvetun /  Orders table">

        <div class="text">
          The Order itself is a rather complex unit.
          <br>
          Business spread all over the world, so the calculation is in different currencies.
          The order is filled with products. Products are customized from modules, descriptions and requirements for characteristics are attached to them.
          <br>
          Based on the complexity of the order, the production scopes are determined.
          For each order, invoices are generated in accordance with the needs of postal services.
          <br>
          To avoid production errors, all order changes are logged. You can allways view changes and return to previous state.
        </div>
        <img src="../assets/projects/kvetun/1.png" alt="Nicolay Apraksin / Kvetun / Order detail">

        <div class="text">
          Boxes management: distribute order product in boxes to make it easy with postal servises.
          <br>
          The administrator can specify the amount and weight of the boxes.
          Each box is supplied with documentation for postal and customs servises.
        </div>
        <img src="../assets/projects/kvetun/2.png" alt="Nicolay Apraksin / Kvetun / Boxes system">

        <div class="text">
          Payment system is included.
          After the order is formed, the manager can send a link for payment to the client.
        </div>
        <img src="../assets/projects/kvetun/3.png" alt="Nicolay Apraksin / Kvetun / Payment page">

        <div class="text">
          <h2>Products</h2>
          Kvetun manufacture and sale a wide range of fencing equipment: fencing weapons, protective gear, equipment.
          <br>
          Each product can be customized according to the customer's requirements: size, material, color. So there are millions of combinations.
          To solve the accounting problem we developed <b>product customization system</b>.
          <br>
          Each customizable element holds list of possible variations:
        </div>
        <img src="../assets/projects/kvetun/4.png" alt="Nicolay Apraksin / Kvetun / Product module creation">
        <div class="text">
          Products are formed with <b>list of modifiable modules</b>. The image below shows the modules for the saber.
        </div>
        <img src="../assets/projects/kvetun/5.png" alt="Nicolay Apraksin / Kvetun / Product modules set">
        <div class="text">
          Manager indicates the client's requirements for product customization.
        </div>
        <img src="../assets/projects/kvetun/6.png" alt="Nicolay Apraksin / Kvetun / Product in order customisation">

        <div class="text">
          <h2>Production summary table</h2>
          This interface shows the production plan for the month.
          All products that need to be manufactured are collected and organized by type, the cost of materials is calculated.
          Based on these data, a PDF document is formed with the assignment of tasks to production departments.
        </div>
        <img src="../assets/projects/kvetun/8.png" alt="Nicolay Apraksin / Kvetun / Summary">

        <div class="text">
          <h2>Task system</h2>
          Communication within the system between employees occurs through a tasks manager.
          In terms of functionality, it corresponds to common task trackers, but it is tailored for a specific area of activity.
          <br>
          As an example, a task can be connected to an order, multiple orders, or specific products in an order.
          From the order page, the manager can mark the problematic products, the tasks will be assigned to the appropriate production department.
        </div>
        <img src="../assets/projects/kvetun/9.png" alt="Nicolay Apraksin / Kvetun / Task labels">
        <img src="../assets/projects/kvetun/10.png" alt="Nicolay Apraksin / Kvetun / Task detail">
      </div>
    </div>
  </div>
</template>

<style></style>
