<script setup>
import Navbar from "../components/Navbar.vue";
import Footer from "../components/Footer.vue";
import swal from "sweetalert"
</script>

<script>
import QuillEditor from "../components/QuillEditor.vue";
import axios from "axios"; // Pastikan Anda mengimpor komponen QuillEditor
import swal from "sweetalert"

export default {
  components: {
    QuillEditor,
    axios,swal // Daftarkan komponen QuillEditor
  },
  data() {
    return {
      bid: "",
      data: {
        judul: "",
        penulis: "",
        kategori: "",
        konten: "",
        tanggal_publikasi: "",
      },
      editorContent: "",
    };
  },
  methods: {
    async AddArtikel() {
      const today = new Date();
      const tanggal = today.getDate(); // Mendapatkan tanggal (1-31)
      const bulan = today.getMonth() + 1; // Mendapatkan bulan (0-11), tambahkan 1 untuk mendapatkan bulan (1-12)
      const tahun = today.getFullYear(); // Mendapatkan tahun (tahun lengkap)

      const dateNow = `${tahun}-${bulan}-${tanggal}`;
      const fetchData = async () => {
        try {
          this.data.tanggal_publikasi = dateNow;
          this.data.konten = this.editorContent;
          const response = await axios
            .post(
              `http://localhost/project_lod/be_artikel/api/artikel`,
              this.data,
              {
                headers: {
                  "Content-Type": "application/json", // Sesuaikan sesuai kebutuhan
                },
              }
            )
            // .catch((error) => {
            //   console.log("ini error :", error);
            // });
            swal("Sukses", "Sukses Insert Article", "success");
            this.$router.push('/');
          //   console.log(data);
          console.log(response);
        } catch (error) {
          console.error("Terjadi kesalahan:", error);
        }
      };
      fetchData();

      // data.konten = editorContent;
      //   console.log(this.data);
    },
    updateEditorContent(content) {
      // Mengupdate editorContent saat event diterima dari QuillEditor
      this.editorContent = content;
    },
  },
};
</script>

<template>
  <div class="w-full h-[100px] bg-[#EDECFF]">
    <Navbar />
  </div>
  <div>
    <p class="font-bold font-sans text-3xl text-[#333333]">
      Tambahkan Artikel Terbaikmu!!
    </p>
  </div>
  <div class="w-[50%]">
    <div class="relative h-10 w-full min-w-[200px]">
      <input
        class="peer h-full w-full rounded-[7px] border border-blue-gray-200 border-t-transparent bg-transparent px-3 py-2.5 font-sans text-sm font-normal text-blue-gray-700 outline outline-0 transition-all placeholder-shown:border placeholder-shown:border-blue-gray-200 placeholder-shown:border-t-blue-gray-200 focus:border-2 focus:border-pink-500 focus:border-t-transparent focus:outline-0 disabled:border-0 disabled:bg-blue-gray-50"
        placeholder=" "
        v-model="data.judul"
      />
      <label
        class="before:content[' '] after:content[' '] pointer-events-none absolute left-0 -top-1.5 flex h-full w-full select-none text-[11px] font-normal leading-tight text-blue-gray-400 transition-all before:pointer-events-none before:mt-[6.5px] before:mr-1 before:box-border before:block before:h-1.5 before:w-2.5 before:rounded-tl-md before:border-t before:border-l before:border-blue-gray-200 before:transition-all after:pointer-events-none after:mt-[6.5px] after:ml-1 after:box-border after:block after:h-1.5 after:w-2.5 after:flex-grow after:rounded-tr-md after:border-t after:border-r after:border-blue-gray-200 after:transition-all peer-placeholder-shown:text-sm peer-placeholder-shown:leading-[3.75] peer-placeholder-shown:text-blue-gray-500 peer-placeholder-shown:before:border-transparent peer-placeholder-shown:after:border-transparent peer-focus:text-[11px] peer-focus:leading-tight peer-focus:text-pink-500 peer-focus:before:border-t-2 peer-focus:before:border-l-2 peer-focus:before:border-pink-500 peer-focus:after:border-t-2 peer-focus:after:border-r-2 peer-focus:after:border-pink-500 peer-disabled:text-transparent peer-disabled:before:border-transparent peer-disabled:after:border-transparent peer-disabled:peer-placeholder-shown:text-blue-gray-500"
      >
        Judul
      </label>
    </div>
  </div>
  <div class="w-[50%]">
    <div class="relative h-10 w-full min-w-[200px]">
      <input
        class="peer h-full w-full rounded-[7px] border border-blue-gray-200 border-t-transparent bg-transparent px-3 py-2.5 font-sans text-sm font-normal text-blue-gray-700 outline outline-0 transition-all placeholder-shown:border placeholder-shown:border-blue-gray-200 placeholder-shown:border-t-blue-gray-200 focus:border-2 focus:border-pink-500 focus:border-t-transparent focus:outline-0 disabled:border-0 disabled:bg-blue-gray-50"
        placeholder=" "
        v-model="data.penulis"
      />
      <label
        class="before:content[' '] after:content[' '] pointer-events-none absolute left-0 -top-1.5 flex h-full w-full select-none text-[11px] font-normal leading-tight text-blue-gray-400 transition-all before:pointer-events-none before:mt-[6.5px] before:mr-1 before:box-border before:block before:h-1.5 before:w-2.5 before:rounded-tl-md before:border-t before:border-l before:border-blue-gray-200 before:transition-all after:pointer-events-none after:mt-[6.5px] after:ml-1 after:box-border after:block after:h-1.5 after:w-2.5 after:flex-grow after:rounded-tr-md after:border-t after:border-r after:border-blue-gray-200 after:transition-all peer-placeholder-shown:text-sm peer-placeholder-shown:leading-[3.75] peer-placeholder-shown:text-blue-gray-500 peer-placeholder-shown:before:border-transparent peer-placeholder-shown:after:border-transparent peer-focus:text-[11px] peer-focus:leading-tight peer-focus:text-pink-500 peer-focus:before:border-t-2 peer-focus:before:border-l-2 peer-focus:before:border-pink-500 peer-focus:after:border-t-2 peer-focus:after:border-r-2 peer-focus:after:border-pink-500 peer-disabled:text-transparent peer-disabled:before:border-transparent peer-disabled:after:border-transparent peer-disabled:peer-placeholder-shown:text-blue-gray-500"
      >
        Penulis
      </label>
    </div>
  </div>
  <div class="w-[50%]">
    <div class="relative h-10 w-full min-w-[200px]">
      <input
        class="peer h-full w-full rounded-[7px] border border-blue-gray-200 border-t-transparent bg-transparent px-3 py-2.5 font-sans text-sm font-normal text-blue-gray-700 outline outline-0 transition-all placeholder-shown:border placeholder-shown:border-blue-gray-200 placeholder-shown:border-t-blue-gray-200 focus:border-2 focus:border-pink-500 focus:border-t-transparent focus:outline-0 disabled:border-0 disabled:bg-blue-gray-50"
        placeholder=" "
        v-model="data.kategori"
      />
      <label
        class="before:content[' '] after:content[' '] pointer-events-none absolute left-0 -top-1.5 flex h-full w-full select-none text-[11px] font-normal leading-tight text-blue-gray-400 transition-all before:pointer-events-none before:mt-[6.5px] before:mr-1 before:box-border before:block before:h-1.5 before:w-2.5 before:rounded-tl-md before:border-t before:border-l before:border-blue-gray-200 before:transition-all after:pointer-events-none after:mt-[6.5px] after:ml-1 after:box-border after:block after:h-1.5 after:w-2.5 after:flex-grow after:rounded-tr-md after:border-t after:border-r after:border-blue-gray-200 after:transition-all peer-placeholder-shown:text-sm peer-placeholder-shown:leading-[3.75] peer-placeholder-shown:text-blue-gray-500 peer-placeholder-shown:before:border-transparent peer-placeholder-shown:after:border-transparent peer-focus:text-[11px] peer-focus:leading-tight peer-focus:text-pink-500 peer-focus:before:border-t-2 peer-focus:before:border-l-2 peer-focus:before:border-pink-500 peer-focus:after:border-t-2 peer-focus:after:border-r-2 peer-focus:after:border-pink-500 peer-disabled:text-transparent peer-disabled:before:border-transparent peer-disabled:after:border-transparent peer-disabled:peer-placeholder-shown:text-blue-gray-500"
      >
        Kategori
      </label>
    </div>
  </div>
  <div class="w-[50%] mt-[-30px]">
    <p class="ml-3 font-semibold mb-[5px]">Konten</p>
    <QuillEditor @update:editorContent="updateEditorContent" />
  </div>
  <button class="rounded-full bg-sky-400 w-[200px] h-[50px]">
    <p class="font-bold font-serif text-[#333333]" @click="AddArtikel">
      Insert Article
    </p>
  </button>
  <Footer />

  <!-- <h1>Ini TEMPAT NAMBAH article bang</h1> -->
</template>
