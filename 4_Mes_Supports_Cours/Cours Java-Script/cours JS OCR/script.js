/* Exercice 1 et 2 et 3 ecrire dans un paragraphe en JS */

let numberOfSeasons = 7;
let numberOfEpisodes = 10;

let episodeTime = 45;
let commercialTime = 5;
let totalShowTime = episodeTime + commercialTime;
let episodeTitle = "Taupiqueur";
let episodeDuration = 70;
let hasBeenWatched = true;

let paragraph = document.querySelector("#info");
paragraph.innerText = `${numberOfSeasons} seasons, ${numberOfEpisodes} episodes per season,
Total viewing time: ${totalShowTime} minutes`;

document.querySelector("#episode-info").innerText = `Episode: ${episodeTitle}
Duration: ${episodeDuration} min
${hasBeenWatched ? "Already watched" : "Not yet watched"}`;

/*Exercice 2bis */

const hoursPerDay = 24;

const minutesPerHour = 60;

const secondsPerMinute = 60;

const dayInput = document.querySelector("#day-input");
const calculateButton = document.querySelector("#calculate-button");
const hours = document.querySelector("#hours");
const minutes = document.querySelector("#minutes");
const seconds = document.querySelector("#seconds");

calculateButton.addEventListener("click", () => {
  let days = dayInput.value;
  let calcHours = days * hoursPerDay;
  let calcMinutes = calcHours * minutesPerHour;
  let calcSeconds = calcMinutes * secondsPerMinute;

  hours.innerText = `${calcHours} hours`;
  minutes.innerText = `${calcMinutes} minutes`;
  seconds.innerText = `${calcSeconds} seconds`;
});

/*Exercice 4*/
let episode = {
  title: "Taupiqueur",
  duration: 70,
  hasBeenWatched: false,
};

document.querySelector("#episode-info2").innerText = `Episode: ${episode.title}
Duration: ${episode.duration} min
${episode.hasBeenWatched ? "Already watched" : "Not yet watched"}`;

/*exercice 4 bis changer les infos d'un objet*/
let episode2 = {
  title: "Dark Beginnings",
  duration: 45,
  hasBeenWatched: false,
};

let episodeTitle2 = episode2.title;
let episodeDuration2 = episode2.duration;
let episodeHasBeenWatched = episode2.hasBeenWatched;

document.querySelector("#episode-info3").innerText = `Episode: ${episodeTitle2}
Duration: ${episodeDuration2} min
${episodeHasBeenWatched ? "Already watched" : "Not yet watched"}`;

/*créer une class JS*/
class book {
  constructor(title, author, pages) {
    this.title=title;
    this.author=author,
    this.pages=pages;
  }
};
let myBook = new book("réjouissez vous parce que c'est arrivé","Moreira elvira",180);

/*Exercice 4 ter créer et utiliser une classe*/
class episode4{constructor(title,duration,hasBeenWatched){
  this.title=title;
  this.duration=duration;
  this.hasBeenWatched=hasBeenWatched;
  }              
  };
  let firstEpisode = new episode4("starswars1",90,true);
  let secondEpisode = new episode4("starwars2",95,true);
  let thirdEpisode = new episode4("starwars3",120,false);
                
  
  
  document.querySelector('#first-episode-info').innerText = `Episode: ${firstEpisode.title}
  Duration: ${firstEpisode.duration} min
  ${firstEpisode.hasBeenWatched ? 'Already watched' : 'Not yet watched'}`;
  
  document.querySelector('#second-episode-info').innerText = `Episode: ${secondEpisode.title}
  Duration: ${secondEpisode.duration} min
  ${secondEpisode.hasBeenWatched ? 'Already watched' : 'Not yet watched'}`;
  
  document.querySelector('#third-episode-info').innerText = `Episode: ${thirdEpisode.title}
  Duration: ${thirdEpisode.duration} min
  ${thirdEpisode.hasBeenWatched ? 'Already watched' : 'Not yet watched'}`;