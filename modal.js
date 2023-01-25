{
  const openBtn = document.querySelector('.open');
  const modal = document.querySelector('.modal');
  const closeBtn = document.querySelector('.close');
  const overlay = document.querySelector('.overlay');

  openBtn.addEventListener('click', function(e){
    e.preventDefault();
    modal.classList.add('active');
    overlay.classList.add('active');
  });

  closeBtn.addEventListener('click', function(){
    modal.classList.remove('active');
    overlay.classList.remove('active');
  });
}
