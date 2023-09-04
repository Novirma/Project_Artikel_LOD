<template>
    <div>
        <div ref="quillEditor"></div>
    </div>
</template>

<script>
import Quill from 'quill'
import 'quill/dist/quill.snow.css' // Impor gaya Quill

export default {
    props : {
        initialValue : String,
        content : String,
        editorContent :String,
    },
    mounted() {
        const quill = new Quill(this.$refs.quillEditor, {
            theme: 'snow',
        })

        if(this.initialValue) {
            quill.root.innerHTML = this.initialValue
        }

        quill.on('text-change', () => {
            const editorContent = quill.root.innerHTML
            this.editorContent = editorContent
            this.$emit('update:editorContent', editorContent)
        })
    },
    data() {
        return {
            editorContent: '', // Variabel untuk menampung konten editor
        }
    },
    methods: {
        tampilkanKonten() {
            // Tampilkan konten editorContent di console
            console.log(this.editorContent)
        },
    },
}
</script>

