const btnSelect = document.querySelectorAll('.select');
const selectDates = document.getElementById('selectDates');
const sites = document.getElementById('sites');

btnSelect.forEach(button => {
    button.addEventListener('click', () => {
        selectDates.classList = 'main-title';
        sites.parentNode.className = 'text-black';
    });
});

sites.addEventListener("click", () => {
    selectDates.className = 'text-black-50';
    sites.parentNode.className = 'main-title';
})