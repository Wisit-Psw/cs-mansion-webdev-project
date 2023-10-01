<script setup>
import PasswordIcon from '../icon/PasswordIcon.vue';
import UserLoginIcon from '../icon/UserLoginIcon.vue';
import { teamColor } from '../module/team.js';
</script>

<template>
  <div class="center">
    <div class="login">login</div>
    <form method="post">
      <div class="txt_field">
        <div class="Icon-wrap">
          <UserLoginIcon />
        </div>
        <input type="text" placeholder="Username" required>
        <span></span>
      </div>
      <div class="txt_field">
        <div class="Icon-wrap">
          <PasswordIcon />
        </div>
        <input type="password" placeholder="Password" required>
        <span></span>
      </div>
      <input type="submit" value="Login">
    </form>
    <label class="switch">
      <input type="checkbox">
      <span class="slider round"></span>
    </label>
  </div>
</template>

<style scoped>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

/* switch */

.switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
}

/* Hide default HTML checkbox */
.switch input {
  opacity: 0;
  width: 0;
  height: 0;
}

/* The slider */
.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider {
  background-color: var(--menuColor);
}

input:focus + .slider {
  box-shadow: 0 0 1px var(--menuColor);
}

input:checked + .slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}

/* switch */

.center {
  box-shadow: 0 0 0.3rem 0.3rem #e6e5e5;
  background-color: white;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 20rem;
  height: 17rem;
  border-radius: 0.7rem;
}

.center .login {
  text-align: center;
  margin: 0.6rem 0 0 0;
  padding: 0.5rem 1.4rem;
  font-size: 1.5rem;
  border-radius: 0.3rem;
  color: var(--textcolor);
}

.center form {
  padding: 0rem 2rem 2rem 2rem;
}

form .txt_field {
  display: flex;
  gap: 0.5rem;
  position: relative;
  border-bottom: 2px solid #adadad;
  margin: 1.5rem 0.5rem 1.5rem 0;
}

.txt_field .Icon-wrap {
  position: relative;
  top: 0.1rem;
  width: 1.2rem;
  height: 1.2rem;
}

.txt_field input {
  width: 100%;
  height: 1.5rem;
  font-size: 0.9rem;
  border: none;
  outline: none;
}
.txt_field span::before {
  content: '';
  position: absolute;
  top: 1.5rem;
  left: 0;
  width: 0%;
  height: 0.15rem;
  background: var(--menuColor);
  transition: .5s;
}

.txt_field input:focus~span::before,
.txt_field input:valid~span::before {
  width: 100%;
}
input[type="submit"] {
  margin-top: 0.5rem;
  width: 100%;
  height: 2.5rem;
  border: 1px solid;
  background: var(--menuColor);
  border-radius: 0.6rem;
  font-size: 1.2rem;
  color: #ffffff;
  outline: none;
  font-weight: 700;
  cursor: pointer;
}

input[type="submit"]:hover {
  background: rgb(132, 214, 209);
  border-color: rgb(132, 214, 209);
  transition: .1s;
}
</style>
