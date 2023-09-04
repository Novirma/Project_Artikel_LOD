<template>
  <nav class="flex w-full justify-between items-center text-[#333333] px-[50px] pt-[30px]">
    <div class="w-[156px] h-[34px] flex-shrink-0">
      <h1 class="font-serif font-semibold text-4xl text-[#333333] ">Article</h1>
    </div>
    <ul
      class="flex items-start gap-14 text-center font-serif text-base font-bold"
    >
      <li v-for="navLink in navLinks" :key="navLink.id">
        <a :href="navLink.links" class="max-w-[96px]">{{ navLink.title }}</a>
      </li>
    </ul>
    <button class="flex items-center gap-7">
        <img :src="LogoSearch" alt="Search Logo" class="flex max-w-[20px] max-h-[20px] justify-center items-center">
        <button class="flex h-[40px] p-[10px] pr-[30px] items-center gap-4 bg-main-primary-two rounded-md">
            <h1 class="font-semibold">Get Article</h1>
        </button>
    </button>
  </nav>
</template>

<script setup>
import { ref } from "vue";
import LogoSearch from '../assets/Icons/Group.svg'

const navLinks = ref([
  {
    id: "home",
    title: "HomePage",
    links: "/",
  },
  {
    id: "news",
    title: "InsertArticle",
    links: "/insert",
  },
]);
</script>
