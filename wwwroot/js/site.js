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

                    const tbodyRooms = document.querySelector('#tbody-rooms');
                    tbodyRooms.innerHTML = '';

                    data.forEach(room => {
                        const row = `
                        <tr>
                            <td>
                                <div class="details-svg" data-bs-toggle="modal" data-bs-target="#DetailsModal" data-room-quantity="${room.quantity}" data-room-capacity="${room.capacity}" data-room-description="${room.description}" data-room-normalfee="${room.normalFee}" data-room-specialfee="${room.specialFee}">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 100 100"><path fill="#787878" d="M56.774 10.391c-17.679 0-32.001 14.329-32.001 32a31.85 31.85 0 0 0 4.588 16.517L13.846 74.423l.054.054c-1.656 1.585-2.673 3.835-2.673 6.378c-.001 4.913 3.913 8.755 8.821 8.754c2.507-.001 4.749-1.004 6.349-2.636l.039.039l16.008-16.009a31.9 31.9 0 0 0 14.33 3.388c17.68 0 31.999-14.327 31.999-32c0-17.671-14.32-32-31.999-32m.194 51.417c-11.05 0-20.001-8.954-20.001-20c0-11.044 8.951-20 20.001-20s19.999 8.955 19.999 20c.001 11.046-8.949 20-19.999 20"/></svg>
                                </div>
                            </td>
                            <td>${room.quantity}</td>
                            <td>${room.capacity}</td>
                            <td>${room.normalFee}</td>
                            <td>${room.specialFee}</td>
                            <td><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 12 16"><path fill-rule="evenodd" d="M12 5l-8 8l-4-4l1.5-1.5L4 10l6.5-6.5L12 5z" fill="#000000"/></svg></td>
                            <td>
                                <div class="details-svg">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24"><path fill="#787878" d="M19 19H5V8h14m-3-7v2H8V1H6v2H5c-1.11 0-2 .89-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V5a2 2 0 0 0-2-2h-1V1m-1 11h-5v5h5z"/></svg>
                                </div>
                            </td>
                            <td><input class="form-check-input" type="checkbox" value="" id="reverseCheck1"></td>
                        </tr>
                        `;

                        tbodyRooms.innerHTML += row;
                    });

                    const roomDetails = document.querySelector('#roomDetails');
                })
    } catch (error) {
        console.error(error.Message);
    }
}

const modal = document.getElementById('DetailsModal');

modal.addEventListener('show.bs.modal', function (event) {
    const button = event.relatedTarget;
    const description = button.getAttribute('data-room-description');
    const quantity = button.getAttribute('data-room-quantity');
    const capacity = button.getAttribute('data-room-capacity');
    const normalfee = button.getAttribute('data-room-normalfee');
    const specialfee = button.getAttribute('data-room-specialfee');

    document.getElementById('roomDescription').innerText = description;
    document.getElementById('roomsQuantity').innerText = quantity;
    document.getElementById('roomsCapacity').innerText = capacity;
    document.getElementById('roomsNormalFee').innerText = normalfee;
    document.getElementById('roomsSpecialFee').innerText = specialfee;
});