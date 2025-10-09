var ul= document.getElementById("lista")
let url="https://thesimpsonsapi.com/api/"
let arr_original=[]
var lis=""
var getLista =(page)=>{


fetch(url+"characters?page="+page).then(response=>{
    if(!response.ok){
        console.log("ERROR EN LA RED")
    }
    return response.json()

}).then(data=>{
    console.log("Datos del personaje: ",data)

    data.results.forEach(personaje=>{
       arr_original.push({
        personaje:personaje,
        datos:null,

       })
       lis+=`
       <li>
       <img src="https://cdn.thesimpsonsapi.com/500${personaje.portrait_path}" width="200px"/>
       <h2>${personaje.name}</h2>
       </li>`
    })
    ul.innerHTML = lis
    console.log("Arreglo final", arr_original)
})
}
for(let i=1; i<6;i++){
    getLista(i)
}


setTimeout(()=>{
document.getElementById("preloader").style.display="none"
},1000)

const imprimir =(arr)=>{
    var todo="";
    arr.forEach(item=>{
        todo+=`
        <li>
        <img  src="https://cdn.thesimpsonsapi.com/500${item.personaje.portrait_path}" width="200px"/>
         <h2>${item.personaje.name}</h2>
        </li>`
    })
    ul.innerHTML=todo
}

document.querySelector("#mostrarTodo").addEventListener('click',(evt)=>{
    evt.preventDefault();
    imprimir(arr_original)
})
//FUNCIONES PARA MOSTRAR LAS COSAS
document.querySelector("#linkedad").addEventListener('click',(evt)=>{
    //evitar recarga
evt.preventDefault();
   
    let res=arr_original.filter((item)=>item.personaje.age > 50 && item.personaje.age != null)
    console.log("edad ",res)
    imprimir(res)
})

document.querySelector("#linkmuertos").addEventListener('click',(evt)=>{
    //evitar recarga
evt.preventDefault();
   
    let res=arr_original.filter((item)=>item.personaje.status != "Alive")
    console.log("Muertos ",res)
    imprimir(res)
})

document.querySelector("#linkmenoresdeedad").addEventListener('click',(evt)=>{
    //evitar recarga
evt.preventDefault();
   
    let res=arr_original.filter((item)=>item.personaje.age < 18 && item.personaje.age != null)
    console.log("Menores de edad ",res)
    imprimir(res)
})

document.querySelector("#linkpromedio").addEventListener('click',(evt)=>{
    //evitar recarga
evt.preventDefault();

 // Filtrar los personajes que tienen edad válida (> 0)
    let res = arr_original.filter(item => item.personaje.age != null && item.personaje.age > 0);
 
    // Obtener el promedio
    let total = res.reduce((acc, item) => acc + item.personaje.age, 0);
    let promedio = (res.length > 0) ? (total / res.length).toFixed(2) : 0;
    alert("El promedio de edad es: " + promedio); 
})


document.querySelector("#linkordenaredad").addEventListener('click',(evt)=>{
    //evitar recarga
evt.preventDefault();

 // Filtrar los personajes que tienen edad válida (> 0)
    let res = arr_original.filter(item => item.personaje.age != null && item.personaje.age > 0);
    res.sort((a,b) => a.personaje.age - b.personaje.age);
    let ordenado = res[0] && res[res.length - 1];
    imprimir(res)
})

document.querySelector("#linkmayorymenor").addEventListener('click',(evt)=>{
    //evitar recarga
evt.preventDefault();

 // Filtrar los personajes que tienen edad válida (> 0)
    let res = arr_original.filter(item => item.personaje.age != null && item.personaje.age > 0);
    res.sort((a,b) => a.personaje.age - b.personaje.age);
    let ordenado = [res[0],res[res.length - 1]];

    imprimir(ordenado);
})

document.querySelector("#linkestudiantes").addEventListener('click',(evt)=>{
    //evitar recarga
evt.preventDefault();
   
    let res=arr_original.filter((item)=>item.personaje.occupation.includes("Student"))
    imprimir(res)
})

document.querySelector("#linkfechanacimiento").addEventListener('click', (evt) => {
    // Evitar recarga
    evt.preventDefault();
    
    const fechaLimite = new Date('1980/02/01');
    let res = arr_original.filter((item) => {
        if (item.personaje.birthdate) {
            let fechaNacimiento = new Date(item.personaje.birthdate);
            return fechaNacimiento < fechaLimite;
        }
        return false; 
    });
    imprimir(res); 
});

document
  .querySelector(".search input[type='search']")
  .addEventListener("keypress", (evt) => {
    if (evt.key === "Enter") {
      let palabra = evt.target.value.toLowerCase();
      if (palabra.trim() === "") return alert("Ingrese una frase o palabra");
 
      let res = arr_original.filter((item) =>
        item.personaje.phrases.some((f) => f.toLowerCase().includes(palabra))
      );
      console.log("Coincidencias por frase", res);
      imprimir(res);
    }
  });