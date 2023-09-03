<template>
  <nav class="flex w-[1320px] justify-between items-center">
    <div class="w-[156] h-[34] flex-shrink-0">
      <h1 class="font-serif font-semibold text-4xl">Article</h1>
    </div>
    <ul
      class="flex items-start gap-14 text-center font-serif text-base font-bold"
    >
      <li v-for="navLink in navLinks" :key="navLink.id">
        <a :href="navLink.links" class="max-w-[96px]">{{ navLink.title }}</a>
      </li>
    </ul>
    <button class="flex items-center gap-7">
        <img :src="LogoSearch" alt="Search Logo" class="flex max-w-[20] max-h-[20] justify-center items-center">
        <button class="flex h-[40] p-[10] pr-[30] items-center gap-4 bg-main-primary-two">
            <h1>Get Article</h1>
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
    title: "News",
    links: "/news",
  },
  {
    id: "about",
    title: "About",
    links: "/about",
  },
  {
    id: "contacts",
    title: "Contacts",
    links: "/contacts",
  },
]);
</script>
