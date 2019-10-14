import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { BooksComponent } from './books/books.component';
import { MoviesComponent } from './movies/movies.component';

const routes: Routes = [
  { path: '', component: HomeComponent },
  { path: 'books', component: BooksComponent },
  { path: 'movies', component: MoviesComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
