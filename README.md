# development_uisge-beatha
# development_uisge-beatha
/* custom stylsheets */

html {
  font-size: 100%;

  /* Scales by 1px for every 100px from 600px to 1000px */
  @media (min-width: 600px) {
    font-size: calc(112.5% + 4 * (100vw - 600px) / 400)
  }

  /* Scales by 0.5px for every 100px from 1000px to 2000px */
  @media (min-width: 1000px) {
    font-size: calc(137.5% + 5 * (100vw - 1000px) / 1000)
  }
}


.parallax {
    /* The image used */
    background-image: url(/CGSmartImage src='https://develop.uisge-beatha.eu/www/uploads/images/site/IMG_0167.jpg' notag=1 noresponsive=1 noembed=0/);
    /* Full height */
    height: 110vh; 

    /* Create the parallax scrolling effect */
    background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}

/* Turn off parallax scrolling for tablets and phones. Increase the pixels if needed */
@media only screen and (max-device-width: 1366px) {
    .parallax {
        background-attachment: scroll;
    }
}

.MainContainer {
  perspective: 1px;
  transform-style: preserve-3d;
  height: 100vh;
  overflow-x: hidden;
  overflow-y: scroll;
}

.ContentContainer {
  position: relative;
  display: block;
  background-color: white;
  z-index: 1;
}

.Content {
  max-width: 750px;
  margin: 0 auto;
  padding: 75px 0;
}
@media only screen and (min-device-width: 768px)  { 
.ParallaxContainer {
    display: flex;
    flex: 1 0 auto;
    position: relative;
    z-index: -1;
    height: 100vh; 
    justify-content: center;
    align-items: center;
    transform: translateZ(-1px) scale(6);
    background-repeat:no-repeat;

    background: url(/CGSmartImage src='//develop.uisge-beatha.eu/www/uploads/images/site/IMG_0167.jpg' notag=1 noresponsive=1 noembed=0/);
    background-position: -0px -0px;
    
    /*  background-image: url(/CGSmartImage src='https://develop.uisge-beatha.eu/www/uploads/images/site/IMG_0167.jpg' notag=1 noresponsive=1 noembed=0/); */
        
    /* background-image: url("{root_url}/uploads/images/cms/40MijlvanBru-02.jpg"); */
    background-size: cover;
    /* background-color: rgb(250,228, 216); */
} }

/* ----------- to align text vertical on home page ----------- */
svg {
	width: 100%; height: 100%;
	pointer-events: none; /* so that you can resize the element */
}
text {
	text-anchor: middle;
	pointer-events: auto; /* Cancel the svg’s pointer-events */
	fill: currentColor;
	font-size: 4vw;  /* vw makes the size responsive */
	color:white;"
}
