<template>
  <div
    class="w-full bg-[#FFFFFF]"
    v-for="article in dataArticle"
    :key="article.id"
  >
    <div class="w-full h-[300px] bg-[#EDECFF]">
      <Navbar />
      <div class="w-full h-[200px] items-center mt-[100px]">
        <div class="w-full h-[140px] top-[239px] left-[50px]">
          <p
            class="text-5xl font-normal leading-[140px] text-center font-sans capitalize"
          >
            {{ article.judul }}
          </p>
        </div>
      </div>
    </div>
    <div class="w-[359px] h-[140px] top-[525px] left-[75px]">
      <p class="text-2xl font-semibold mt-5 text-center font-sans mb-3">
        Penulis : {{ article.penulis }}
      </p>
      <div class="flex">
        <img :src="LogoKalendar" alt="" class="ml-[80px] mr-4" />
        <span class="font-semi"> {{ article.tanggal_publikasi }} </span>
      </div>
    </div>
    <div
      class="w-[95%] h-[2px] top-[-889px] left-[2059px] border border-solid border-[#D6D6D6] mx-auto mt-[-45px]"
    ></div>
    <!-- <div class="h-[1000px]">
        <h1>qweqweqe</h1>
    </div> -->
    <div class="w-[80%] h-auto top-[648px] left-[75px] mx-auto my-[60px]">
      <p
        class="text-base font-normal leading-[25px]"
        v-html="article.konten"
      ></p>
    </div>
    <div
      class="w-[95%] h-[2px] top-[-889px] left-[2059px] border border-solid border-[#D6D6D6] mx-auto"
    ></div>
    <div class="w-full h-[140px] top-[525px] left-[75px]">
      <p
        class="text-2xl font-semibold leading-[140px] font-sans text-right mr-[150px]"
      >
        Kategori : {{ article.kategori }}
      </p>
    </div>
    <div class="ml-[600px] mb-[50px]">
      <div class="mr-[30px]"></div>
      <button class="rounded-full bg-red-800 w-[200px] h-[50px]">
        <p class="font-bold font-serif text-[#f1ebeb]" @click="DeleteArticle">
          Delete Article
        </p>
      </button>
    </div>
    <div class="ml-[600px] mb-[50px]">
      <RouterLink active-class="active" :to="`/edit/${article.id}`" >
        <div class="mr-[30px]"></div>
        <button class="rounded-full bg-sky-800 w-[200px] h-[50px]" @click="pindahHalaman">
          <p class="font-bold font-serif text-[#f1ebeb]">Edit Article</p>
        </button>
      </RouterLink>
    </div>
    
    <Footer />
  </div>
</template>

<script setup>
import Navbar from "../components/Navbar.vue";
import Footer from "../components/Footer.vue";
import { ref, onMounted, onBeforeMount } from "vue";
import { useRoute } from "vue-router";
import axios from "axios";
import LogoKalendar from "../assets/Icons/LogoKalendar.svg";
import swal from "sweetalert";
import {RouterView, RouterLink} from "vue-router";

const dataArticle = ref([]);

const route = useRoute();
const userId = route.params.id;
const param = defineProps(["myParam"]);
// Fungsi untuk mengambil data artikel
const fetchData = async () => {
  try {
    const response = await axios.get(
      `http://localhost/project_lod/be_artikel/api/artikel/?id=${userId}`
    );
    dataArticle.value = response.data.data; // Pastikan struktur data sesuai
    console.log(dataArticle);
  } catch (error) {
    console.error("Terjadi kesalahan:", error);
  }
};

// Panggil fungsi fetchData saat komponen di-mount
onMounted(() => {
  fetchData();
});

const DeleteArticle = async () => {
  try {
    const response = await axios.delete(
      "http://localhost/project_lod/be_artikel/api/artikel",
      {
        headers: {
          "Content-Type": "application/x-www-form-urlencoded",
        },
        data: { id: userId },
      }
    );
    swal("Sukses", "Sukses Hapus Article", "success");
    this.$router.push("/");
    // Tangani respons jika sukses
    console.log("Item berhasil dihapus", response.data);
  } catch (error) {
    // Tangani kesalahan jika terjadi
    console.error("Gagal menghapus item", error);
  }
};

const pindahHalaman = () => {
    console.log("hellll");
    this.$router.push('/');
}
</script>
