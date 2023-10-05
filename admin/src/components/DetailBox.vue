<script setup>
defineProps(["DetailName", "DetailPrice"])
</script>

<template>
  <div class="table">
    <div class="thead">
      <div class="tr">
        {{ DetailName }}
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


.editBTN {
  margin-right: 1rem;
  color: white;
  cursor: pointer;
  font-weight: bold;
  width: fit-content;
  padding: 0.2rem 0.5rem;
  background-color: var(--btnColor);
  border-radius: 0.3rem;
  white-space: nowrap;
  text-overflow: ellipsis;
  height: fit-content;
}

.table {
  width: 30rem;
  font-size: 1rem;
  border-spacing: 0;
  text-align: center;
  margin: 1rem auto 0 auto;
  border-collapse: collapse;
  /* เพิ่ม ขอบให้กล่อง */
  border-radius: 0.3rem;
  white-space: nowrap;
  text-overflow: ellipsis;
  box-shadow: 2px 2px 2px 2px var(--menuSelectedColor);
}

.thead {
  color: var(--bgColor);
  border-radius: 0.5rem 0.5rem 0 0;
  background-color: var(--menuColor);
  width: 100%;

}

.tbody {
  border-radius: 0 0 0.5rem 0.5rem;
  display: flex;
  width: 100%;
  align-items: center;


}

.tr {
  display: flex;
  margin-left: 0.5rem;
  /*เพิ่มระยะห่างdetailname */
}


.td {
  display: flex;
}



.tbody>.tr>.td {
  padding: 0.5rem 0.5rem;
}


.detail {
  width: 80%;
  padding: 0.5rem 1rem;
}

.edit {
  width: 20%;
}


@media screen and (min-width: 826px) {


  .table {
    font-size: 1.2rem;
  }

  .tbody {
    max-height: 70dvh;
    overflow-y: auto;
  }
}

@media screen and (min-width: 1200px) {


  .table {
    width: 90%;
  }

}
</style>
