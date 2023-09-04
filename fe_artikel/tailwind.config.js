/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{vue,js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      backgroundColor: {
        'main-primary-two': 'var(--main-primary-two, #FBF3EB)',
      },
      backgroundImage: {
        'backGroundFeatured' : "url('./src/assets/Icons/BgFeatured.png')"
      }
    },
  },
  plugins: [],
}