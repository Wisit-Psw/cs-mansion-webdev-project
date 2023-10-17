
  
<script lang="ts">
import { reactive } from 'vue'
import {
  Chart as ChartJS,
  CategoryScale,
  LinearScale,
  PointElement,
  LineElement,
  Title,
  Tooltip,
  Legend
} from 'chart.js';
import { Line } from 'vue-chartjs'
const chartConfig = reactive({
  data: {
    labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
    datasets: [
      {
        label: 'รายได้ต่อเดือน',
        data: [40, 39, 10, 40, 39, 80, 40]
      },
    ]
  },
  options: {
    responsive: true,
    maintainAspectRatio: false,
    scales: {
      x: {
        grid: {
          display: false,
        },
      },
      y: {
        grid: {
          display: false,
        },
      },
      
    },
    elements: {
      line: {
        borderColor: 'rgba(75, 192, 192, 0.8)',
        backgroundColor: 'rgba(75, 192, 192, 0.8)',
        pointBackgroundColor: 'white',
        borderWidth: 2,
        radius: 0,
        fill: true,
        tension: 0.25,
      },
      point: {
        radius: 3,
        backgroundColor: 'rgba(75, 192, 192, 0.8)',
        borderWidth:0,
      },
    },

  }
})
ChartJS.register(
  CategoryScale,
  LinearScale,
  PointElement,
  LineElement,
  Title,
  Tooltip,
  Legend
)

export default {
  name: 'App',
  components: {
    Line
  },
  data() {
    return chartConfig
  }
}
</script>
  
<template>
  <section class="chart-wrap">
    <Line :data="data" :options="options" />
  </section>
</template>

<style scoped>
.chart-wrap {
  width: 100%;
  height: 100%;
}
</style>