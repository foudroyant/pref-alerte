import { ApplicationConfig, importProvidersFrom } from '@angular/core';
import { provideRouter, withComponentInputBinding } from '@angular/router';

import { routes } from './app.routes';
import { provideClientHydration } from '@angular/platform-browser';
import { initializeApp, provideFirebaseApp } from '@angular/fire/app';
import { getAuth, provideAuth } from '@angular/fire/auth';
import { getFirestore, provideFirestore } from '@angular/fire/firestore';
import { getMessaging, provideMessaging } from '@angular/fire/messaging';
import { provideHttpClient, withFetch } from '@angular/common/http';

export const appConfig: ApplicationConfig = {
  providers: [provideHttpClient(withFetch()), provideRouter(routes, withComponentInputBinding()), provideClientHydration(), importProvidersFrom(provideFirebaseApp(() => initializeApp({"projectId":"djowyett","appId":"1:478289729883:web:713cc9802f6b2e45b2627e","databaseURL":"https://djowyett-default-rtdb.europe-west1.firebasedatabase.app","storageBucket":"djowyett.appspot.com","apiKey":"AIzaSyBA8lgGtRSa88KEc1X_0BhHm0Xfeh4eOfg","authDomain":"djowyett.firebaseapp.com","messagingSenderId":"478289729883"}))), importProvidersFrom(provideAuth(() => getAuth())), importProvidersFrom(provideFirestore(() => getFirestore())), importProvidersFrom(provideMessaging(() => getMessaging()))]
};
