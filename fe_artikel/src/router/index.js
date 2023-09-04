import {createRouter, createWebHistory} from "vue-router";
import HomeView from "../views/HomeView.vue";
import ArticleView from "../views/ArticleView.vue";
import InsertArticle from "../views/InsertArticle.vue";
import EditArticle from "../views/EditArticle.vue";
import NotFoundView from "../views/NotFoundView.vue";


const router = createRouter({
    history: createWebHistory(import.meta.env.BASE_URL),
    routes: [
        {
            path: "/",
            name: "home",
            component: HomeView
        },
        {
            path: "/article/:id",
            name: "article",
            component: ArticleView
        },
        {
            path: "/insert",
            name: "insert",
            component: InsertArticle
        },
        {
            path: "/edit/:id",
            name: "edit",
            component: EditArticle
        },
        {
            path: "/:pathMatch(.*)*",
            name: "notfound",
            component: NotFoundView
        }
    ]
})

export default router