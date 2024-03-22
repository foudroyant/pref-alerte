import { Routes } from '@angular/router';
import { MainComponent } from './pages/main/main.component';
import { HomeComponent } from './pages/home/home.component';
import { NotFoundComponent } from './pages/not-found/not-found.component';
import { PayementComponent } from './pages/payement/payement.component';
import { SignInComponent } from './pages/sign-in/sign-in.component';
import { SignUpComponent } from './pages/sign-up/sign-up.component';
import { PrefectureComponent } from './pages/prefecture/prefecture.component';
import { CompteComponent } from './pages/compte/compte.component';

export const routes: Routes = [
    {path : '', component : MainComponent},
    {path : 'home', component : HomeComponent},
    {path : 'prefecture', component : PrefectureComponent},
    {path : 'payement', component : PayementComponent},
    {path : 'signIn', component : SignInComponent},
    {path : 'signUp', component : SignUpComponent},
    {path : 'compte', component : CompteComponent},
    {path : '**', component : NotFoundComponent},
];
