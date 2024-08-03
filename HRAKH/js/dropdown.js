window.addEventListener('scroll',()=>{
    const scrolled = window.scrollY;
    // document.getElementById('bup').style.display="block";
    document.getElementById('dd').classList.add('visible');
});
window.addEventListener('scroll', () => {
    const scrolled = window.scrollY;
    document.getElementById('dd').classList.add('visible');
    document.getElementById('dd').style.position = 'fixed';
    document.getElementById('dd').style.top = '0';
});
window.addEventListener('scroll', () => {
    const scrolled = window.scrollY;
    document.getElementById('dd').classList.add('visible');
    if (scrolled === 0) {
    document.getElementById('dd').classList.remove('visible');
    }
});