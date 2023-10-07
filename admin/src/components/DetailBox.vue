<script setup>
defineProps(["DetailName", "DetailPrice"])
</script>

<template>
  <div class="table">
    <div class="thead">
      <div class="tr">
      <div class="th">
          {{ DetailName }}
        </div>
        <div class="toggle-container">
          <div class="toggle-circle"></div>
        </div>
      </div>
    </div>
    <div class="tbody">
      <div class="td detail">{{ DetailPrice }}</div>
      <div class="td edit">
        <div class="editBTN">แก้ไข</div>
      </div>
    </div>
  </div>
</template>
<style scoped>
.toggle-container {
  width: 10%;
  height: 2.5%;
  border: 1px solid var(--menuColor);
  border-radius: 10px;
  background-color: white;
  position: relative;
  margin-top: 1%;
  margin-left: 17%;
  transition: all 0.2s ease-out;
}

.toggle-circle {
  width: 1rem;
  height: 1rem;
  border: 1px solid var(--menuColor);
  border-radius: 50%;
  transition: all 0.2s ease-out;
  position: relative;
}

.editBTN {
  margin-right: 1rem;
  color: white;
  cursor: pointer;
  font-weight: bold;
  width: fit-content;
  padding: 0.2rem 0.5rem;
  background-color: var(--btnColor);
  border-radius: 0.5rem;
  white-space: nowrap;
  text-overflow: ellipsis;
  height: fit-content;
}

.table {
  width: 30%;
  border-radius: 0.5rem;
  box-shadow: 2px 2px 2px 2px var(--menuSelectedColor);
  margin: 1rem auto 0 auto;
}

.thead {
  color: var(--bgColor);
  border-radius: 0.5rem 0.5rem 0 0;
  background-color: var(--menuColor);
}

.tbody {
  border-radius: 0 0 0.5rem 0.5rem;
  justify-content: space-around;
  margin: 0 auto;
  display: flex;
}


.tr {
  display: flex;
  padding-top: 0.5%;
  /*เพิ่มระยะห่างdetailname */
}


.td {
  text-align: left;
  margin-left: 5%;
  padding-top: 1%;
  padding-bottom: 1%;
  width: 50%;
}

.th {
  padding: 0.2rem 1.5rem;
  width: fit-content;
  font-weight: bold;
  display: flex;
  justify-content: space-around;
}


.tbody>.tr>.td {
  padding: 0.5rem 0.5rem;
}


.detail {
  width: 70%;
  padding: 0.5rem 1rem;
}

.edit {
  width: 30%;
}


@media screen and (min-width: 826px) {
  .table {
    font-size: 1.2rem;
  }

}

@media screen and (min-width: 1200px) {

  

}
</style>
