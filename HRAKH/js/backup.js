window.addEventListener('scroll', () => {
    const scrolled = window.scrollY;
    document.getElementById('bup').style.display = "none";
});
window.addEventListener('scroll', () => {
    const scrolled = window.scrollY;
    if (scrolled > 600) {
        document.getElementById('bup').classList.add('visible');
        document.getElementById('bup').style.display = "block";
    } else {
        document.getElementById('bup').style.display = "none";
    }
    console.log('scrolled');
});