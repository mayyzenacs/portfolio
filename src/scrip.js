export function animatedAbout() {

    const obs = new IntersectionObserver((entries) => {
        entries.forEach((entry) => {
            console.log(entry)
    
            if (entry.isIntersecting) {
                entry.target.classList.add('show-element')
                // obs.unobserve(entry.target);
            } else {
                entry.target.classList.remove('show-element')
            }
        });
    });
    const hidden = document.querySelectorAll('.hidden-left, .hidden-right')
    hidden.forEach((element) => obs.observe(element))
}
