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


// Details
const siteTitle = document.querySelector('#siteTitle');
const siteImg1 = document.querySelector('#siteImg1');
const siteImg2 = document.querySelectorAll('#siteImg2');
const siteImg3 = document.querySelectorAll('#siteImg3');
const siteDescription = document.querySelector('#siteDescription');

const dataDetails = function (property) {
    siteTitle.textContent = property.name;
    siteImg1.src = property.image1;
    siteImg2.forEach(img => {
        img.src = property.image2;
    });

    siteImg3.forEach(img => {
        img.src = property.image3;
    });
    
    siteDescription.textContent = property.description;

    try {
        fetch(`/Room/GetRoomsByPlace?id=${property.id}`)
                .then(response => response.json())
                .then(data => {
                    console.log(data);
                })
    } catch (error) {
        console.error(error.Message);
    }
}