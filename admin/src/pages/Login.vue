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
  </div>
</template>

<style scoped>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

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
