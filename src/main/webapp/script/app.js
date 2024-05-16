/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

const toggleBtn = document.querySelector('.toggle_btn');
const toggleBtnIcon = document.querySelector('.toggle_btn i');
const dropDownMenu = document.querySelector('.dropdown_menu');

toggleBtn.onclick = function(){
dropDownMenu.classList.toggle('open');
const isOpen = dropDownMenu.classList.contains('open');

toggleBtnIcon.classList = isOpen
?'fa-solid fa-xmark'
: 'fa-solid fa-bars'};



Splitting();

setTimeout(() => {
  document.querySelector(".card").focus();
},1500);



function scrollToSection(sectionId) {
  const section = document.querySelector(sectionId);
  section.scrollIntoView({ behavior: 'auto' });
}


document.addEventListener("DOMContentLoaded", function() {
  const toggleQuickAccessBtn = document.getElementById("btnCategorias");
  const quickAccessButtonsContainer = document.querySelector(".accesorapido");

  toggleQuickAccessBtn.addEventListener("click", function() {
      quickAccessButtonsContainer.classList.toggle('hidden');
  });
});


