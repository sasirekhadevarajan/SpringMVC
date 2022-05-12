function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
  }
  
  

  function openForm() {
    
    document.getElementById("loginForm").style.display = "block";
    
  }
  
  function closeForm() {
    document.getElementById("loginForm").style.display = "none";
    clearForm();
  }

  function  clearForm(){
    const inputs = document.querySelectorAll('#email, #psw');

    inputs.forEach(input => {
      input.value = '';
    });
  }