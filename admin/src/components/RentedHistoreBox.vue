<script setup>
const props = defineProps(["item"]);
import { reactive } from "vue";
const isDetailShow = reactive({ state: false });
const isModalShow = reactive({ state: false });

// const onDetailBTNClick = () => {
//     isDetailShow.state = !isDetailShow.state;
// };
const submit = (event) => {
    event.preventDefault();
    isDetailShow.state = false;
}
const onLeaveCLick = () => {
    isModalShow.state = !isModalShow.state;
}
</script>

<template>
    <div class="modal" v-if="isModalShow.state">
        <div class="backdrop" @click="onLeaveCLick()"></div>
        <div class="madal">
            <div class="modal-header">
                ห้องพัก {{ props.item.RoomID }}
            </div>
            <div class="modal-body">
                ยืนยันการย้ายออก
            </div>
            <div class="modal-footer">
                <div class="btn-wrap">
                    <button class="btn btn-red"   @click="onLeaveCLick()">ยกเลิก</button>
                    <button class="btn btn-blue"  @click="submit()">ยืนยัน</button>
                </div>
            </div>
        </div>
    </div>

    <div class=" dataTable tr">
        <div class="td roomNumber">{{ props.item.RoomID }}</div>
        <div class="td user">{{ props.item.UserName }}</div>
        <div class="td roomPrice">{{ props.item.RoomPrice }}</div>
        <div class="td roomDetail">{{ props.item.RoomDetail }}</div>
        <div class="td start">{{ props.item.RentingStart }}</div>
        <div class="td end">{{ props.item.RentingEnd }}</div>
        <div class="td detail" @click="onLeaveCLick()">
            <div class="dropdown" v-if="!isDetailShow.state">
                <div class="detailBTN">ย้ายออก</div>
            </div>
        </div>
    </div>
</template>

<style scoped>

.madal{
    background-color:white ;
    padding: 1.5rem 2rem;
    border-radius: 0.5rem;
    position:fixed ;
    top:50%;
    left:50%;
    transform: translate(-50%,-50%);
    z-index:5;
}
.modal-header{
    border-bottom:1px solid rgb(211, 211, 211) ;
    text-align: center;
    padding: 0.5rem 0;
}
.modal-body{
    min-width: 20rem;
    text-align: center;
    padding: 2rem 0;
}
.modal-footer{
    padding: 0.5rem 0 1rem 0 ;
}
.btn-wrap{
    display: flex;
    align-items: center;
    justify-content: space-around;
}
.backdrop{
    width: 100dvw;
    height: 100dvh;
    top:0%;
    left:0%;
    background-color: rgba(120, 120, 120, 0.3);
    position:fixed;
    z-index:4;
}
.detailBTN {
    margin: 0 auto;
    color: white;
    cursor: pointer;
    font-weight: bold;
    width: fit-content;
    padding: 0.2rem 0.5rem;
    background-color: red;
    border-radius: 0.3rem;
    white-space: nowrap;
    text-overflow: ellipsis;
}

.dropdown {
    position: relative;
    display: inline-block;
}
.btn{
    background-color: #f1f1f1;
    min-width: 5rem;
    height: 1.75rem;
    box-shadow: 0px 8px 16px 0px rgba(41, 40, 40, 0.404);
    border: none;
    border-radius: 0.3rem;
    white-space: nowrap;
    padding: 0.1rem 0.3rem;
    text-overflow: ellipsis;
    cursor: pointer;
}
.btn:hover{
    background-color: #6d6d6d;
}
.btn-red{
    background-color: red;
    color: white;
}
.btn-blue{
    background-color: rgb(0, 98, 255);
    color: white;
}
.dropdown-content {
    position: relative;
    background-color: #f1f1f1;
    min-width: 5rem;
    height: 1.75rem;
    box-shadow: 0px 8px 16px 0px rgba(41, 40, 40, 0.404);
    border: none;
    border-radius: 0.3rem;
    white-space: nowrap;
    padding: 0.1rem 0.3rem;
    text-overflow: ellipsis;
}


.tr {
    display: flex;
    width: 100%;
    padding: 0.2rem 0.5rem;
}


.td {
    display: flex;
    align-items: center;
    justify-content: space-around;
    width: fit-content;
}

.detail {
    width: 20%;
}

.roomNumber,
.user,
.roomPrice,
.roomDetail,
.start,
.end {
  width: 20%;
}

@media screen and (min-width:826px) {
    .header {
        display: block;
    }

    .filterBar {
        margin: 0 auto;
        font-size: 1.2rem;
        width: fit-content;
        padding: 0.2rem 0.5rem;
    }

    .filter-wrap {
        margin: 0.5rem 3rem;
    }

    .filter-wrap>label {
        margin-right: 0.5rem;
    }

    .filter-wrap>select {
        font-size: 1rem;
        padding: 0 1.5rem;
        border-radius: 0.5rem;
        border-color: var(--menuColor);
    }

    .table {
        font-size: 1.2rem;
    }

    .th {
        font-size: 1.4rem;
    }

    .tbody {
        max-height: 70dvh;
        overflow-y: auto;
    }
}

@media screen and (min-width:1200px) {
    .filterBar {
        width: 60%;
        min-width: 800px;
    }

    .filter-wrap>select {
        padding: 0 2rem;
    }

    .table {
        width: 90%;
    }

    .th {
        font-size: 1.5rem;
    }
}
</style>