<script setup>
import { ref, computed } from 'vue'

const columnWidth = ref(76)
const columns = ref([
  { year: '1991-1998', age: '0-7' },
  { year: '1999', age: '8' },
  { year: '2000', age: '9' },
  { year: '2001', age: '10' },
  { year: '2002', age: '11' },
  { year: '2003', age: '12' },
  { year: '2004', age: '13' },
  { year: '2005', age: '14' },
  { year: '2006', age: '15' },
  { year: '2007', age: '16' },
  { year: '2008', age: '17' },
  { year: '2009', age: '18' },
  { year: '2010', age: '19' },
  { year: '2011', age: '20' },
  { year: '2012', age: '21' },
  { year: '2013', age: '22' },
  { year: '2014', age: '23' },
  { year: '2015', age: '24' },
  { year: '2016', age: '25' },
  { year: '2017', age: '26' },
  { year: '2018', age: '27' },
  { year: '2019', age: '28' },
  { year: '2020', age: '29' },
  { year: '2021', age: '30' },
  { year: '2022', age: '31' },
])

const rowsMarginTop = ref(70)
const rowInitialHeight = ref(150)
const rowHeight = ref(40)
const rows = ref([
  {
    mark: 'education',
    label: 'Education',
    itemRows: [
      [
        {
          label: 'Early School',
          start: 0,
          length: 3,
          tooltip: 'Oh sweet summer time...'
        },
        {
          label: 'Middle School',
          start: 3,
          length: 7,
          tooltip: 'Graduated with a good score. Focused on <b>Math and Informatics</b>.'
        },
        {
          label: 'Bachelor of Science',
          start: 10,
          length: 4,
          tooltip: '<b>With First Class Honours</b>, Applied Informatics in <b>Information Design</b>.<br>' +
            '<small>State Polytechnical University | Saint-Petersburg Russia</small>'
        },
        {
          label: 'Masters of Science',
          start: 14,
          length: 2,
          tooltip: '<b>With First Class Honours</b>, Applied Informatics in <b>Media Design</b>.<br>' +
            '<small>State Polytechnical University | Saint-Petersburg Russia</small>'
        }
      ]
    ]
  },
  {
    mark: 'work',
    label: 'Work Experience',
    itemRows: [
      [
        {
          label: 'Freelance Fullstack Web Dev',
          start: 12,
          length: 6,
          tooltip: 'Bunch of small-to-mid projects in areas of <b>ecommerce, media, education</b>.<br>' +
            'My first stack was <b>PhP</b> with Zend on the backend, <b>JS</b> with <b>JQuery</b> and <b>Bootstrap</b> on the front.<br>' +
            'Then I\'ve moved to the <b>Angular 1</b>.'
        },
        {
          label: 'Product Designer',
          start: 18,
          length: 2,
          tooltip: '<b>Product Designer</b> in business-trading agency <a target="_blank" href="https://fotostrana.ru">AlteraInvest→</a>.<br>' +
            'I\'ve build <b>Design System</b> and all the designs for internal ERP, plus designed several <b>mobile applications</b>.<br>' +
            'My tools were <b>Sketch</b>, <b>Zepplin</b>, <b>Invision</b>, Framer</b> and <b>Figma</b>.',
          link: 'alterainvest'
        },
        {
          label: 'Fullstack Frontend Dev / Lead',
          start: 20,
          length: 5,
          tooltip: 'Lead of the team and the fullstack frontend (product design + frontend) at <a target="_blank" href="https://my.londonsmp.co.uk">LondonSMP→</a>.<br>' +
            'All the designs I do in <b>Figma</b> and develop forntend on <b>Vue</b> (firstly vue2, currently vue3).',
          link: 'londonsmp'
        }

      ],
      [
        {
          label: 'Backend Dev',
          start: 15,
          length: 2,
          tooltip: '<b>Junior to Middle PhP Dev</b> in social network company <a target="_blank" href="https://fotostrana.ru">Fotostrana→</a>.'
        },
        {
          label: 'Fullstack Dev / Lead',
          start: 20,
          length: 5,
          tooltip: 'Production and business management system for fencing equipment factory <a target="_blank" href="https://kvetun.ru">Kvetun→</a>.<br>' +
            'Frontend on <b>Vue3</b>, backend on <b>Node</b> + <b>Express</b> + <b>MongoDb</b>.',
          link: 'kvetun'
        }
      ]
    ]
  },
  {
    mark: 'pet',
    label: 'Pet Projects',
    itemRows: [
      [
        {
          label: 'ZZAPP',
          start: 14,
          length: 3,
          tooltip: '<b>Educational web quiz game</b> about Dota2 mechanics.<br>' +
            'Concept, designs and frontend on <b>Angular2</b>.',
          link: 'zzapp'
        },
        {
          label: 'Hemagon',
          start: 19,
          length: 6,
          tooltip: 'Platform for organizing and hosting hema-fencing tournaments <a target="_blank" href="https://hemagon.com">Hemagon→</a>.<br>' +
            'Frontend on <b>Vue3</b>, backend on <b>Node</b> + <b>Express</b> + <b>MongoDb</b>.',
          link: 'hemagon'
        }
      ],
      [
        {
          label: 'Evenedium',
          start: 17,
          length: 5,
          tooltip: 'Strategic <b>board game</b>.<br>' +
            'Developing concept, rules and all the designs.',
          link: 'evenedium'
        }
      ]
    ]
  },
  {
    mark: 'sports',
    label: 'Sports',
    itemRows: [
      [
        {
          label: 'Choi Kwang-Do',
          start: 1,
          length: 6,
          tooltip: 'First steps in martial arts.'
        },
        {
          label: 'Karate',
          start: 7,
          length: 4,
          tooltip: 'Kyokushin school. Hard training, few competition medals.'
        },
        {
          label: 'Historical Fencing',
          start: 11,
          length: 9,
          tooltip: 'It started as Role-play fencing but over the years grew up to historical fencing sports.'
        },
        {
          label: 'HEMA',
          start: 20,
          length: 5,
          tooltip: 'Found my favourite discipline - the longsword. In December 2021 won my first gold medal in Tier B and moved along to Tier A.' +
            'This sports unites the world - I\'ve traveled to Finland and Sweden and had plans for more, but Covid broke my plans.'
        }
      ],
      [
        {
          label: 'Skiing',
          start: 1,
          length: 8,
          tooltip: 'My parents love mountains and put me on skis as soon as I was ready. And I loved it.'
        },
        {
          label: 'Snowboarding',
          start: 9,
          length: 16,
          tooltip: 'Skiing started to get boring and I found another way to enjoy the mountains than I still enjoy today.'
        }
      ],
      [
        {
          label: 'Cycling',
          start: 18,
          length: 7,
          tooltip: 'Discovered cycling tours as a great way to travel through the hinterland of European countries to enjoy their history and nature'
        }
      ]
    ]
  },
  {
    mark: 'travel',
    label: 'Travel',
    itemRows: [
      [
        {
          label: 'Finland, Sweden, Norway, France, Spain, Germany, Austria, USA',
          start: 0,
          length: 13,
          tooltip: 'Traveling with my parents, learning european culture, skiing in Scandinavia, discovering USA.'
        },
        {
          label: 'Denmark',
          start: 13,
          length: 1,
          tooltip: 'My sister moved to Denmark, so it was the first visit to meet her.'
        },
        {
          label: 'Finland',
          start: 14,
          length: 1,
          tooltip: 'Snowboarding a lot, culture exploring, nature loving.'
        },
        {
          label: 'Denmark, France, Germany',
          start: 15,
          length: 1,
          tooltip: 'Big trip all over the Europe.'
        },
        {
          label: 'Finland',
          start: 16,
          length: 1,
          tooltip: 'First Bike trip all over the Finland to Aaland Islands.'
        },
        {
          label: 'Finland',
          start: 17,
          length: 1,
          tooltip: 'When in Saint-Petersburg there are no mountains and snow these are always are in Finland.'
        },
        {
          label: 'Sweden',
          start: 18,
          length: 1,
          tooltip: 'First HEMA-fencing trip. Awesome Battle at the Bridge tournament at Orebro.'
        },
        {
          label: 'France',
          start: 19,
          length: 1,
          tooltip: 'Bike trip from Paris to the Mont Saint Michele. Tour filled with cultural experience.'
        },
        {
          label: 'Andorra',
          start: 20,
          length: 1,
          tooltip: 'Snowboarding at Grandvalira - probably the best ski resort I\'ve ever been.'
        },
        {
          label: 'Andorra',
          start: 21,
          length: 1,
          tooltip: 'Couldn\'t visit this place again. Endless snowboarding.',
          tooltipOnRight: true
        },
        {
          label: 'Finland',
          start: 22,
          length: 1,
          tooltip: 'Attended Helsinki Longsword Open tournament. Also it was hosted on my Hemagon software.',
          link: 'hemagon',
          tooltipOnRight: true
        },
        {
          label: 'Baikal',
          start: 23,
          length: 1,
          tooltip: 'Covid closed the borders so I went to ice skating trip over the Baikal lake.',
          tooltipOnRight: true
        },
        {
          label: 'Istanbul',
          start: 24,
          length: 1,
          tooltip: 'Hello Turkey!',
          tooltipOnRight: true
        }
      ],
      [
        {
          label: 'Sri Lanka',
          start: 15,
          length: 1,
          tooltip: 'Discovering Sri Lanka culture.'
        },
        {
          label: 'Brazil',
          start: 18,
          length: 1,
          tooltip: 'Visited my awesome friend who is famous musician.'
        }
      ]
    ]
  }
])

const totalHeight = computed(() => {
  let height = rowsMarginTop.value
  for (let row of rows.value) {
    height += row.itemRows.length * rowHeight.value + rowInitialHeight.value
  }
  return height
})
const totalWidth = computed(() => columns.value.length * columnWidth.value)

</script>

<template>
  <div
    class="lifetime"
    :style="{ width: `${totalWidth}px` }"
  >
    <div
      class="columns"
      :style="{
        width: `${totalWidth}px`,
        height: `${totalHeight}px`
      }"
    >
      <div
        v-for="(column, index) in columns"
        :key="index"
        :style="{
          width: `${columnWidth}px`,
          height: `${totalHeight}px`
        }"
        class="column"
      >
        <div class="column-head">
          <div class="year">
            {{ column.year }}
          </div>
          <div class="age">
            {{ column.age }}
          </div>
        </div>
      </div>
    </div>
    <div
      class="rows"
      :style="{
        top: `${rowsMarginTop}px`,
        width: `${totalWidth}px`,
      }"
    >
      <div
        v-for="(row, index) in rows"
        :key="index"
        :style="{
          width: `${totalWidth}px`,
          height: `${row.itemRows.length * rowHeight + rowInitialHeight}px`
        }"
        class="row"
        :class="row.mark"
      >
        <div class="row-label">
          {{ row.label }}
        </div>
        <div class="items">
          <div
            v-for="(itemRow, index) in row.itemRows"
            :key="index"
            :style="{
              height: `${rowHeight}px`
            }"
            class="item-row"
          >
            <div
              v-for="(item, index) in itemRow"
              :key="index"
              :style="{
                left: `${columnWidth * item.start}px`,
                width: `${columnWidth * item.length}px`,
              }"
              class="item"
            >
              <div class="item-label">
                {{ item.label }}
              </div>
              <div
                v-if="item.tooltip"
                class="item-tooltip"
                :class="{ 'right': item.tooltipOnRight }"
              >
                <temaplte v-html="item.tooltip" />
                <div
                  v-if="item.link"
                  class="item-tooltip-link"
                >
                  <router-link :to="item.link">
                    To project →
                  </router-link>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
.lifetime {
  position: relative;
  overflow-x: scroll;
  margin: 0 auto;
}

.columns {
  display: flex;
}
.column {
  flex-shrink: 0;
  flex-grow: 0;
  text-align: center;
  border-left: 1px dashed var(--color-border);
}
.age {
  font-size: 1.5em;
  padding-bottom: 8px;
  border-bottom: 1px dashed var(--color-text);
}
.column:last-of-type {
  border-right: 1px dashed var(--color-border);
}
.column-head {
}

.rows {
  position: absolute;
  width: 100%;
}
.row {
  border-bottom: 1px dashed var(--color-text);
}
.row-label {
  position: sticky;
  top: 0;
  left: 0;
  width: 100vw;
  text-align: center;
  font-size: 2em;
  margin-bottom: .5em;
  padding-top: .5em;
}
.row:hover.education { background: rgba(255, 0, 0, 0.02); }
.row:hover.work { background: rgba(255, 255, 0, 0.02); }
.row:hover.pet { background: rgba(255, 0, 255, 0.02); }
.row:hover.sports { background: rgba(0, 255, 0, 0.02); }
.row:hover.travel { background: rgba(0, 255, 255, 0.02); }
.row:hover .row-label {
  color: var(--color-text-accent);
}

.item-row {
  position: relative;
}
.item {
  position: absolute;
  border: 2px solid var(--color-background--dark);
  background: var(--color-text);
  color: var(--color-background--dark);
  border-radius: 4px;
  padding: 4px;
}
.item-label {
  text-align: center;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  width: 100%;
}
.item-tooltip {
  position: absolute;
  bottom: 32px;
  left: 0;
  width: 350px;
  background: #111213;
  color: var(--color-text);
  border-top-left-radius: 8px;
  border-top-right-radius: 8px;
  padding: 1em;
  display: none;
}
.item-tooltip.right {
  right: 0;
  left: auto;
}
.item-tooltip-link {
  margin-top: 6px;
}
.item:hover {
  background: var(--color-text-accent);
  cursor: pointer;
}
.item:hover .item-tooltip {
  display: block;
}

@media screen and (max-width: 767px) {
  .lifetime {
    width: 100% !important;
  }
}
</style>
