<template>
  <div class="flex flex-col items-center gap-16 text-[#333333] w-full pb-[30px]">
    <div class="flex items-center py-0 pl-[60px] pr-[221px] bg-[#EDECFF] h-[166px] w-full">
      <p
        class="text-general-body-text text-center font-serif text-3xl font-normal text-[#333] max-w-full"
      >
        Hello! If you have some questions, then you can just
        <span class="text-[#656565] underline">write an email</span> to us
      </p>
    </div>
    <div class="flex w-full justify-between items-center px-[50px]">
      <div class="w-[630px] flex-shrink-0">
        <p class="font-lato text-base font-normal text-[#333]">
          © 2023 Articler. Some rights reserved. Made with ❤️ by Raihan Novirma.
        </p>
      </div>
      <ul
      class="flex items-start gap-14 text-center font-serif text-base font-normal text-[#333]"
    >
      <li v-for="navLink in navLinks" :key="navLink.id">
        <a :href="navLink.links" class="max-w-[96px]">{{ navLink.title }}</a>
      </li>
    </ul>
    </div>
  </div>
</template>

<script setup>
import { ref } from "vue";


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
