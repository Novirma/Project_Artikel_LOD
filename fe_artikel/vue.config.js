// vue.config.js
// module.exports = {
//     devServer: {
//         proxy: 'http://localhost/'
//       }
// };
// module.exports = {
//     devServer: {
//       proxy: {
//         '/api': {
//           target: 'http://localhost:3000', // URL server backend Anda
//           changeOrigin: true,
//           pathRewrite: {
//             '^/api': '', // Menghapus '/api' dari permintaan saat meneruskannya ke server
//           },
//         },
//       },
//     },
//   };