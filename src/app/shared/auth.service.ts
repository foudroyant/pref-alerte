import { Injectable, inject } from '@angular/core';
import { Auth, User, createUserWithEmailAndPassword, signInWithEmailAndPassword, signOut } from '@angular/fire/auth';
import { Router } from '@angular/router';
import { collection, doc, getDoc, getDocs, getFirestore, setDoc, updateDoc  } from '@angular/fire/firestore';
import { ModelMotif, ModelPrefecture, ModelUserData } from './model';

@Injectable({
  providedIn: 'root'
})
export class AuthService {
  isAuthentificated : boolean = false
  user : User | undefined ;
  private auth: Auth = inject(Auth);
  private router = inject(Router)
  db = getFirestore();

  prefectures : ModelPrefecture [] = []
  links : string [] = []
  phone_number : string = ""
  userData : ModelUserData | undefined

  constructor() { }

  
  async inscrire(email : string, password : string){
    return await createUserWithEmailAndPassword(
      this.auth,
      email,
      password
      ).then(async (res:any)=>{
        this.isAuthentificated = true
        this.user = res.user
        await setDoc(doc(this.db, "users", this.user?.uid!), {
          phone_number: "",
          motifs: [],
        });
        this.router.navigate(["/home"])
      })
      .catch((err:any)=>{
        console.log(err)
        alert("Une erreur s'est produite.")
        alert(err)
      })
  }

  async connecter(email : string, password : string){
    signInWithEmailAndPassword(this.auth, email, password)
    .then((res:any)=>{
      console.log(res)
      this.isAuthentificated = true
      this.user = res.user
      localStorage.setItem("user", JSON.stringify(this.user))
      this.router.navigate(["/home"])
    })
    .catch((err:any)=>{
      console.log(err)
      alert("Une erreur s'est produite")
    })
  }

  async logout(){
    signOut(this.auth).then(() => {
      this.isAuthentificated = false
      localStorage.removeItem("user")
      this.router.navigate(["/signIn"])
    }).catch((error) => {
      // An error happened.
    });
  }


  async getPrefectures(){
    this.prefectures = []
    const querySnapshot = await getDocs(collection(this.db, "prefectures"));
    querySnapshot.forEach((doc) => {
      console.log(doc.id, " => ", doc.data());
      this.prefectures.push({
        id : doc.id,
        indicatif : doc.data()["indicatif"],
        prefecture : doc.data()["prefecture"],
        sousPref : doc.data()["sousPref"],
        motifs : doc.data()["motifs"] 
      })
    });
    return this.prefectures
  }

  async getUserData(){
    const userRef = await doc(this.db, "users", this.user?.uid!)
    const userDoc = await getDoc(userRef);
    this.phone_number = userDoc.data()!["phone_number"]
    this.links = userDoc.data()!["motifs"]
    
    localStorage.setItem("phone", this.phone_number)
    localStorage.setItem("credits", userDoc.data()!["credits"])
    return {
      "phone" : this.phone_number,
      "links" : this.links,
      "credits" : userDoc.data()!["credits"]
    }
  }

  async subscribe_motif(motif : ModelMotif){
    let _motifs :string[] = [""]
    const userRef = await doc(this.db, "users", this.user?.uid!)
    const userDoc = await getDoc(userRef);
    _motifs = userDoc.data()!["motifs"]
    _motifs.push(motif.lien)
    await updateDoc(userRef, {
      motifs : _motifs
    });
    alert("Vous êtes maintenant abonné à ce motif")
  }

  async desubscribe_motif(motif : ModelMotif){
    let _motifs :string[] = [""]
    const userRef = await doc(this.db, "users", this.user?.uid!)
    const userDoc = await getDoc(userRef);
    _motifs = userDoc.data()!["motifs"]
    _motifs.splice(_motifs.indexOf(motif.lien), 1)
    await updateDoc(userRef, {
      motifs : _motifs
    });
    alert("Vous êtes maintenant désabonné à ce motif")
  }

  async updatePhone(phone : string){
    const userRef = await doc(this.db, "users", this.user?.uid!)
    const userDoc = await getDoc(userRef);
    await updateDoc(userRef, {
      phone_number : phone
    });
    localStorage.setItem("phone", phone)
  }

  check_user_connection(){
    this.user = JSON.parse(localStorage.getItem("user")!)
    console.log(this.user)
    if(this.user != undefined){
      this.isAuthentificated = true
      this.router.navigate(["/home"])
    }
    else {
      this.router.navigate(["/signIn"])
    }
  }
}