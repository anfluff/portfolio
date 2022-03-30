<script setup>
import { ref } from 'vue'
import Technologies from '../components/Technologies.vue'

const technologies = ref({
  roles: ['product design', 'frontend', 'lead'],
  design: ['figma'],
  frontend: ['vue3', 'webpack', 'postcss', 'nuxt', 'ssr'],
  infrastructure: ['git', 'docker', 'gitlab']
})

let activeTab = ref(0)

function setTab (value) {
  activeTab.value = value
}
</script>

<template>
  <div class="page-container">
    <h1>LondonSMP</h1>
    <div class="project-link">
      <a
        href="https://my.londonsmp.co.uk"
        target="_blank"
      >
        my.londonsmp.co.uk→
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
        <div class="text accent">
          London School of Mathematics and Programming is the London based company focused on supplementary education: evening programmes, weekend courses, multi-day camps.
          <br>
          For 4 years, my team and I have created a completely <b>custom CRM + LMS system</b>.
          <br>
          The system we created made it possible to transfer the management of all processes into a user-friendly interface, as well as to launch online education.
          <br>
          My role on the project is <b>fullstack frontend and teamlead</b>. Our team has 2 frontends, 2 backends and 1 tester.
          All design and internal communication is my area of responsibility.
        </div>

        <Technologies :technologies="technologies"/>
      </div>

      <div
        v-if="activeTab === 1"
        class="tab"
      >
        <img src="../assets/projects/lsmp/1.png" alt="Nicolay Apraksin / LondonSMP / Intro">
        <div class="text">
          The main specialization of the school is <b>supplementary education</b>: evening courses, weekend classes, multi-day vacation camps. The system optimally covers the needs of participants of the educational process.
          <br>
          <b>Students</b> recieve a curriculum assembled to their needs.
          Learning process is delivered in modern forms with constant encouragement by the teacher.
          <br>
          <b>Parents of students</b> monitor their children progress and receive information about the covered material.
          <br>
          <b>Teachers</b> conduct classes providing necessary content in real time, and check students homework, set attendance and leave comments about progress for parents and administration.
          <br>
          Courses and lessons are formed on the basis of curricula created by <b>Methodists</b>.
          <br>
          <b>Administration</b> forms schedule grids for schools, monitors the activity of children and teachers, assesses the financial plans of the school, runs advertising campaigns and mailing lists.
        </div>
      </div>

      <div
        v-if="activeTab === 2"
        class="tab"
      >
        <div class="text">
          I was invited to a startup as a full-stack developer.
          The customer's task was to <b>create an LMS system</b> with specific requirements in a short time.
          Of course, it is impossible to create such a product from scratch in a short time.
          <br>
          Therefore, it was decided to take the <b>open source LMS Moodle</b> and supplement it with custom modules for solving customer problems: advanced authorisation functionality, students special needs monitorring, creating various types of courses and training programs.
          <br>
          After creating the technical backbone, the next step was to <b>design and implement own interface</b>.
          By the time it became clear that not all of our needs can be satisfied with Moodle modules.
          <br>
          I've developed <b>backend on PHP</b> extending the functionality of the moodle.
          In the course of development, it became clear that its own data structures and the logic are much more suitable for the project than Moodle algorithms.
          Gradually, all the logic moved from the moodle to my custom developed backend, which only accessed the services of the moodle.
          But this backend, although it <b>implemented the MVC approach</b>, did not use modern frameworks, which burdened further development.
          <br>
          The project began to grow and a backend developer was hired, who took over the coding of a new full-fledged Symphony backend, which soon allowed Moodle to be cut off.
          <br>
          Since Moodle is a static synchronous site, the frontend was originally built as a set of pages, each of them was an independent vue instance.
          The transition to our own backend allowed us to combine all these pages into a <b>single page asynchronous frontend</b>.
          <br>
          The modern history of our system starts over here. We call it Concent LMS.

          <h2>Concent LMS</h2>
          The lesson is the main component of the system for the student.
          <br>
          The author of the course integrates exercises to a lesson. The exercise is not just a text, the information is presented in a form convenient for the subject of the exercise.
          It may contain <b>interactive graphic editors, quizzes</b>, homework assignments and much more.
        </div>
        <img src="../assets/projects/lsmp/2_2.png" alt="Nicolay Apraksin / LondonSMP / Lesson">
        <div class="text">
          But not all students go through the lesson material evenly.
          The teacher has a <b>lesson customization functionality</b>: each of the students may receive personal formed content.
          <br>
          Want to show the hint to the student? It is possible with a single click.
        </div>
        <img src="../assets/projects/lsmp/3_7.png" alt="Nicolay Apraksin / LondonSMP / Lesson configuration for students">
        <div class="text">
          <h2>Interactive tasks</h2>
          One of the interesting features of the system are interactive tasks - <b>vector editor based on Canvas</b>.
        </div>
        <img src="../assets/projects/lsmp/2_4.png" alt="Nicolay Apraksin / LondonSMP / Interactive task">
        <div class="text">
          The teacher and the student can make changes that are saved in the history.
          You can always look at past states.
        </div>
        <img src="../assets/projects/lsmp/2_3.png" alt="Nicolay Apraksin / LondonSMP / Interactive task history">
        <div class="text">
          <h2>Quizzes</h2>
          The second interesting interactive element is quizzes - questionnaires that reinforce the knowledge of the student.
          <br>
          Questions can be:
          <ul>
            <li>Choose from answer options.</li>
            <li>Open question with short text.</li>
            <li>Question with dragging elements into slots.</li>
            <li>Question with open rich text and file upload.</li>
            <li>Interactive tasks.</li>
          </ul>
        </div>
        <img src="../assets/projects/lsmp/2_6.png" alt="Nicolay Apraksin / LondonSMP / Quiz">
        <div class="text">
          Most questions are checked automatically.
          There may be several correct options in them - the compiler of the quiz independently sets how much scores the student will get.
        </div>
        <img src="../assets/projects/lsmp/2_7.png" alt="Nicolay Apraksin / LondonSMP / Quiz results">

        <div class="text">
          <h2>Lesson administration</h2>
          During the lesson, the teacher can see the progress of each student.
          A <b>summary interface</b> is required to get the big picture.
          <br>
          The lesson overview allows you to see the activity of all students at once, progress on homework and quizzes, and set grades.
        </div>
        <img src="../assets/projects/lsmp/3_8.png" alt="Nicolay Apraksin / LondonSMP / Lesson overview">
        <div class="text">
          The second important course overview interface is <b>Attendance</b>.
          <br>
          The teacher marks the attendance of classes, rates the activity of students in the lesson, leaves comments - for parents and for the administration.
        </div>
        <img src="../assets/projects/lsmp/3_1.png" alt="Nicolay Apraksin / LondonSMP / Lesson Attendance">
        <div class="text">
          Administrators have their own interface for viewing course students.
          The status of the entry, date range and payment is the most important for them.
        </div>
        <img src="../assets/projects/lsmp/3_2.png" alt="Nicolay Apraksin / LondonSMP / Course users">
        <div class="text">
          You can enroll to the course in a number of ways:
          <ul>
            <li>Trial lesson.</li>
            <li>A substitute is a replacement for a lesson in another course.</li>
            <li>Full Entry - Administrator selects a range of dates.</li>
          </ul>
          The student has access only to the materials of courses they are enrolled to.
        </div>
        <img src="../assets/projects/lsmp/3_4.png" alt="Nicolay Apraksin / LondonSMP / Enrollment">
        <div class="text">
          <h2>Exercises</h2>
          Each exercise has its own theme, difficulty level, files and comments, quizzes and interactive editors, hints and solutions.
        </div>
        <img src="../assets/projects/lsmp/3_6.png" alt="Nicolay Apraksin / LondonSMP / Exercise">
        <div class="text">
          <b>Learning Programs</b> are built by Methodists of exercises.
          <br>
          Each learning program combines all the materials on a specific topic.
          They are organized by chapters, consecrating the stages of mastering the discipline.
          Each chapter is filled with suitable exercises. Exercises built together form sets: blocks of exercises on the basis of which it is convenient to create lessons.
        </div>
        <img src="../assets/projects/lsmp/3_9.png" alt="Nicolay Apraksin / LondonSMP / Library">

        <div class="text">
          <h2>Chats & Notifications</h2>
          To communicate within the system, a chat system is implemented.
          Technically, it is buit on <b>sockets</b>, which allows you to exchange messages in real time.
          <br>
          Chats can exist independently or be linked to courses.
        </div>
        <img src="../assets/projects/lsmp/4_2.png" alt="Nicolay Apraksin / LondonSMP / Chat">
        <div class="text">
          Every important event comes with <b>notification</b> — enrollment on a course, a new lesson, a quiz review, a new grade for homework, and so on.
          <br>
          Notifications are also extremely important for the administration - they receive informations about all user activity in the system.

          <h2>Room allocation & Summary</h2>
          Administrators form the schedule by <b>the Room Allocation</b>.
          You can distribute lessons by room and time by dragging and dropping.
          <br>
          By clicking on the name of the teacher, you can find out about his workload.
          <br>
          It is possible to send notifications about changes in the schedule to all selected teachers.
        </div>
        <img src="../assets/projects/lsmp/5_2.png" alt="Nicolay Apraksin / LondonSMP / Room Allocation">
        <div class="text">
          The <b>Summary</b> is another big interface that helps administration overview the day.
          <br>
          Lessons are displayed in order of time.
          Each of them represents students with important information for administrator: type of enrollment, payment information, other lessons of the student on that day, contact information of parents.
        </div>
        <img src="../assets/projects/lsmp/5_3.png" alt="Nicolay Apraksin / LondonSMP / Summary">

        <div class="text">
          <h2>Landing constructor</h2>
          Online courses require advertising.
          The obvious solution was to create landing pages that drive traffic to the selling pages of the course.
          In order not to make landings manually every time, it was decided to develop a <b>landing constructor</b>.
          <br>
          The resulting system allows you to create a multi-page landing.
          Each page is filled with blocks, each designed to presentat infrormation of certain type.
          <br>
          Ready-made landings drived by <b>Nuxt + SSR</b>.
          <br>
          Below is an example of a page assembled using the constructor.
        </div>
        <img src="../assets/projects/lsmp/6_1.png" alt="Nicolay Apraksin / LondonSMP / Landing">
      </div>

      <div
        v-if="activeTab === 3"
        class="tab"
      >
        <div class="text">
          The system can be represented as a bundle of the main core with a set of extension modules.
          <br>
          Some of them extend the functionality of entities, such as the quiz module for exercises.
          Others are independent systems, such as Notifications or Chats.
        </div>
        <img src="../assets/projects/lsmp/tech_1.svg" alt="Nicolay Apraksin / LondonSMP / Scheme">
        <div class="text">
          At the moment, the system implements the needs of the following roles:
          <ul>
            <li>Guest: searches for courses of interest to him, registers to the system.</li>
            <li>Parent: registers children, buys courses for children, monitors educational progress.</li>
            <li>Student: consumes educational content.</li>
            <li>Teacher: runs classes, manages content available to students, accompanies students in chats, puts grades.</li>
            <li>Methodist: build learging programmes.</li>
            <li>Head of learning: create courses, fill them with lessons and exercises.</li>
            <li>Administrator: enrolling students to courses, interacts with incoming applications, buids waiting lists.</li>
            <li>Director: observes statistics and analytics of the system.</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>
<style></style>
