<script setup>
import Navbar from "../components/Navbar.vue";
import Footer from "../components/Footer.vue";
import TombolPanahSubmit from "../assets/Icons/TombolPanahSubmit.svg";
import Gambar1 from "../assets/Icons/1.png";
import Gambar2 from "../assets/Icons/2.png";
import Gambar3 from "../assets/Icons/3.png";
import Popular1 from "../assets/Icons/Popular1.png";
import Popular2 from "../assets/Icons/Popular2.png";
import Popular3 from "../assets/Icons/Popular3.png";
import GambarListArtikel from "../assets/Icons/GambarListArtikel.png";
import LogoKalendar from "../assets/Icons/LogoKalendar.svg";
import IconUser from "../assets/Icons/IconUser.svg";
import { ref, onMounted } from "vue";
import axios from "axios";
import {useRouter} from "vue-router"

const router = useRouter();

// const handleChange = () => {
//   router.push({query:{make: make.value}})
// }

const dataArticle = ref([]);

// Fungsi untuk mengambil data artikel
const fetchData = async () => {
  try {
    const response = await axios.get('http://localhost/project_lod/be_artikel/api/artikel');
    dataArticle.value = response.data.data; // Pastikan struktur data sesuai
  } catch (error) {
    console.error("Terjadi kesalahan:", error);
  }
};

// Panggil fungsi fetchData saat komponen di-mount
onMounted(() => {
  fetchData();
});


</script>

<template>
  <section class="w-full h-[691px] bg-[#EDECFF]">
    <Navbar />
    <div class="flex w-full h-auto items-start gap-[30px] text-[#333]">
      <div
        class="flex flex-col w-[575px] items-start gap-[60px] mt-[107px] mb-auto ml-[50px]"
      >
        <p class="font-sans text-[56px] font-normal">
          Submit your article and join our network!
        </p>
        <div class="w-[615px] h-auto">
          <p class="font-sans text-base font-light leading-6 max-w-[500px]">
            Don't waste time and join our community of authors! Share your
            knowledge and experience with our readers and get the opportunity to
            become a part of our professional and creative team!
          </p>
        </div>
        <a href="/insert">
        <button
          class="w-[230px] h-[60px] flex p-[10px] pr-[10px] pl-[20px] items-center gap-[15px] border-l-4 border-[#333] bg-[#FDD9D3] rounded-lg"  
        >
          <div
            class="flex w-[30px] h-[20px] p-[6.396px 0.05px 6.397px 0.051px] justify-center items-center"
          >
            <img
              :src="TombolPanahSubmit"
              alt="TombolPanahSubmit"
              class="w-[30px] h-[7.206px] flex-shrink-0 mr-[15px]"
            />
          </div>
          <div class="w-auto h-auto">
            <p class="text-center font-serif text-base font-bold tracking-wide">
              Insert Article
            </p>
          </div>
        </button>
        </a>
      </div>
      <div class="w-[195px] h-[460px] flex-shrink-0 mt-[58px]">
        <img :src="Gambar1" alt="#1" />
        <p
          class="font-sans text-[8px] font-medium leading-3 mt-[20px] text-center"
        >
          by Guzmán Barquín on Unsplash
        </p>
      </div>
      <div class="w-[195px] h-[460px] flex-shrink-0 mt-[88px]">
        <p
          class="font-sans text-[8px] font-medium leading-3 mb-[20px] text-center"
        >
          by Guzmán Barquín on Unsplash
        </p>
        <img :src="Gambar2" alt="#1" />
      </div>
      <div class="w-[195px] h-[460px] flex-shrink-0 mt-[58px]">
        <img :src="Gambar3" alt="#1" />
        <p
          class="font-sans text-[8px] font-medium leading-3 mt-[20px] text-center"
        >
          by Guzmán Barquín on Unsplash
        </p>
      </div>
    </div>
  </section>
  <section
    class="flex flex-col w-full p-0 px-[60px] items-start gap-[60px] text-[#333333]"
  >
    <div class="flex justify-between items-center self-stretch">
      <p class="font-serif text-4xl font-normal leading-normal">
        Popular works
      </p>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        width="40"
        height="40"
        viewBox="0 0 40 40"
        fill="none"
      >
        <path
          d="M33.35 4.83374H10.2188C9.88727 4.83374 9.56933 4.96544 9.33491 5.19986C9.10049 5.43428 8.96879 5.75222 8.96879 6.08374C8.96879 6.41526 9.10049 6.7332 9.33491 6.96762C9.56933 7.20204 9.88727 7.33374 10.2188 7.33374H30.8988L5.25004 32.9837C5.12605 33.0979 5.02642 33.2359 4.95713 33.3895C4.88784 33.5431 4.85032 33.7091 4.84683 33.8776C4.84334 34.0461 4.87395 34.2135 4.93682 34.3698C4.99969 34.5262 5.09352 34.6682 5.21267 34.7874C5.33183 34.9065 5.47385 35.0003 5.63019 35.0632C5.78653 35.1261 5.95398 35.1567 6.12245 35.1532C6.29092 35.1497 6.45695 35.1122 6.61056 35.0429C6.76417 34.9736 6.90217 34.874 7.01629 34.75L32.6663 9.09999V29.7812C32.6663 30.1128 32.798 30.4307 33.0324 30.6651C33.2668 30.8995 33.5848 31.0312 33.9163 31.0312C34.2478 31.0312 34.5658 30.8995 34.8002 30.6651C35.0346 30.4307 35.1663 30.1128 35.1663 29.7812V6.65124C35.1656 6.16963 34.9741 5.70791 34.6337 5.36724C34.2932 5.02658 33.8317 4.83473 33.35 4.83374Z"
          fill="#333333"
        />
      </svg>
    </div>
    <div class="flex">
      <div class="flex items-start gap-[30px]">
        <div class="w-[83px] h-[83px]">
          <img :src="Popular1" alt="PW1" />
        </div>
        <div class="flex flex-col justify-center items-start gap-[10px]">
          <div class="w-[307px]">
            <p class="font-serif text-lg font-normal leading-normal">
              Orange Pattern
            </p>
          </div>
          <div class="w-[307px]">
            <p class="font-lato text-base font-light leading-6">
              São Paulo, Brazil by Estúdio Bloom on Unsplash
            </p>
          </div>
        </div>
      </div>
      <div class="flex items-start gap-[30px]">
        <div class="w-[83px] h-[83px]">
          <img :src="Popular2" alt="PW1" />
        </div>
        <div class="flex flex-col justify-center items-start gap-[10px]">
          <div class="w-[307px]">
            <p class="font-serif text-lg font-normal leading-normal">
              Semangko Pattern
            </p>
          </div>
          <div class="w-[307px]">
            <p class="font-lato text-base font-light leading-6">
              São Paulo, Brazil by Estúdio Bloom on Unsplash
            </p>
          </div>
        </div>
      </div>
      <div class="flex items-start gap-[30px]">
        <div class="w-[83px] h-[83px]">
          <img :src="Popular3" alt="PW1" />
        </div>
        <div class="flex flex-col justify-center items-start gap-[10px]">
          <div class="w-[307px]">
            <p class="font-serif text-lg font-normal leading-normal">
              Lemon Pattern
            </p>
          </div>
          <div class="w-[307px]">
            <p class="font-lato text-base font-light leading-6">
              São Paulo, Brazil by Estúdio Bloom on Unsplash
            </p>
          </div>
        </div>
      </div>
    </div>
    <div class="h-1 self-stretch">
      <div class="w-full h-1 flex-shrink-0 bg-[#F1F1F1]"></div>
      <div class="w-82 h-1 flex-shrink-0 bg-[#333]"></div>
    </div>
  </section>
  <section
    class="flex flex-col w-full px-[60px] items-start gap-[30px] text-[#333333]"
  >
    <ul class="flex w-4/5 justify-between items-start ml-[500px]">
      <li>
        <a href="" class="font-serif leading-6 font-bold text-3xl"
          >All Artikel</a
        >
      </li>
    </ul>
    <div class="flex items-start gap-[30px]">
      <div
        class="flex flex-col w-[645px] h-[618px] p-[30px] justify-between items-start rounded-md bg-backGroundFeatured"
      ></div>
      <ul class="flex flex-col items-start gap-[30px] max-h-[630px] overflow-auto">
        <li
          class="flex w-[550px] h-[186px] justify-center items-start gap-[30px] cursor-pointer"
          v-for="article in dataArticle" :key="article.id" @click="router.push(`/article/${article.id}`)"
        >
          <img
            :src="GambarListArtikel"
            alt=""
            class="w-[195px] h-[186px] flex-shrink-0 rounded"
          />
          <div class="flex flex-col items-start gap-[30px]">
            <div class="flex flex-col items-start gap-[5px]">
              <div class="flex flex-col items-star gap-[10px] w-[300px]">
                <div class="flex items-center gap-[15px]">
                  <img
                    :src="LogoKalendar"
                    alt=""
                    class="flex w-[20px] h-[20px] p-[1.042px 1.875px] justify-center items-center"
                  />
                  <p class="font-serif text-xs font-normal text-[#656565]">
                    {{ article.tanggal_publikasi }}
                  </p>
                </div>
                <div class="flex items-center gap-[15px]">
                  <img
                    :src="IconUser"
                    alt=""
                    class="flex w-[20px] h-[20px] p-[1.042px 1.875px] justify-center items-center"
                  />
                  <p class="font-serif text-xs font-normal leading-4 text-[#656565]">{{ article.penulis }}</p>
                </div>
                <div class="w-[275px]">
                  <p class="font-serif text-lg font-semibold">{{ article.judul }}</p>
                </div>
                <div class="self-stretch">
                  <p class="font-serif text-[9px] font-light leading-6 line-clamp-3" v-html="article.konten"></p>
                </div>
              </div>
            </div>
          </div>
        </li>
      </ul>
    </div>
    <div class="h-1 self-stretch">
      <div class="w-full h-1 flex-shrink-0 bg-[#F1F1F1]"></div>
      <div class="w-82 h-1 flex-shrink-0 bg-[#333]"></div>
    </div>
  </section>
  <Footer />
  <!-- <h1 class="text-3xl font-bold underline text-sky-500 py-10">Hello world!</h1> -->
</template>
