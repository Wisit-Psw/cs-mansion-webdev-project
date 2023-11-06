
  
<script>
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
import { reactive } from 'vue'
// import { useUserStore } from "../module/userstore"
// import axios from "axios";
const lineData = reactive({
  data: [],
  label: []
})
// const userstore = useUserStore();

// const queryData = async () => {
//   const chartData = await axios.post("http://localhost:3001/api/user/graph", { RentingID: userstore.data.response.RentingID});
//   chartData.data.forEach(element => {
//     lineData.data.push(element.Total)
//     lineData.label.push(element.BillDate.slice(0, 10))
//   });
// }
// await queryData();
// const props = defineProps(['lineData'])
import { Line } from 'vue-chartjs'
const chartConfig = reactive({
  data: {
    labels: lineData.label,
    datasets: [
      {
        label: 'รายได้ต่อเดือน',
        data: lineData.data
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
        borderWidth: 0,
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
  <div class="chart-wrap">
    <Line :data="data" :options="options" />
  </div>
</template>

<style scoped>
.chart-wrap {
  width: 100%;
  height: 100%;
}
</style>