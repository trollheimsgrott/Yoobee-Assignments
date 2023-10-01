// Init function called on page load.
function init() {
  // Grab the `#page:...` part of the address.
  var page = window.location.hash.split(':')[1];
  // If it not present, default to the "store" page.
  if (!page) {
    page = "store";
  }

  

  // Show the page.
  showPage(page);
};

function toggleNav() {
  var mainSideNav = document.getElementById("mainSideNav");
  mainSideNav.classList.toggle("show");
}

function showPage(id) {
  // Set the location hash to the current page.
  window.location.hash = "page:" + id;
  const pages = document.querySelectorAll(".page");
  const togoPage = document.getElementById(id);

  
// close sidenav on pageload
  var mainSideNav = document.getElementById("mainSideNav");
  mainSideNav.classList.remove("show");


  pages.forEach((page) => {
    page.style.display = "none";
  });

  togoPage.style.display = "block";
}

/*
var flexbox = document.getElementById("flexbox");
flexbox.style.width="597px";
function hideflexbox(){
    if (flexbox.style.width <= "597px;"){
        flexbox.style.width === "0px";
        }
    else{
        flexbox.style.width === "597px";
    }
}
*/
