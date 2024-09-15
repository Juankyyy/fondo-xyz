const btnSelect = document.querySelectorAll('.select');
const selectDates = document.getElementById('selectDates');
const sites = document.getElementById('sites');
const main = document.querySelector('.main-content');

const sitesTable = document.getElementById('sitesTable');
const siteDetail = document.getElementById('siteDetail');

btnSelect.forEach(button => {
    button.addEventListener('click', (event) => {
        selectDates.classList = 'main-title';
        sites.parentNode.className = 'text-black';

        const btn = event.target;

        const nombre = btn.getAttribute('data-name');
        const descripcion = btn.getAttribute('data-description');
        const tipo = btn.getAttribute('data-type');
        const ubicacion = btn.getAttribute('data-ubication');

        sitesTable.style.display = 'none';
        siteDetail.style.display = 'block';
    });
});

sites.addEventListener("click", () => {
    selectDates.className = 'text-black-50';
    sites.parentNode.className = 'main-title';

    sitesTable.style.display = 'table';
    siteDetail.style.display = 'none';
})
