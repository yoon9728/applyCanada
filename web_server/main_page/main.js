const toggle = document.querySelector('.navbar_toggle');
const menu = document.querySelector('.navbar_menu');
const icons = document.querySelector('.navbar_icons');

toggle.addEventListener('click',() => {
    menu.classList.toggle('active');
    icons.classList.toggle('active');

    document.body.classList.toggle('menu-open');
})

document.addEventListener("DOMContentLoaded", function () {
    const boxContents = document.querySelector(".box-contents");
    const links = document.querySelectorAll(".sidemenu a");
    links.forEach(link => {
        link.addEventListener("click", function (event) {
            event.preventDefault();
            const endpoint = `/api/${this.id}`; // Assuming the ID of the link matches the API endpoint
            fetchAndDisplay(endpoint);
        });
    });

    function fetchAndDisplay(endpoint) {
        fetch(endpoint)
            .then((response) => response.json())
            .then((data) => {
                boxContents.innerHTML = "";
                data.forEach((item) => {
                    const div = document.createElement("div");
                    div.innerHTML = createItemContent(item);
                    boxContents.appendChild(div);
                });
            })
            .catch((error) => {
                console.error("Error fetching data:", error);
            });
    }

    function createItemContent(item) {
        let content = '';
        let count = 0; // Counter to track the position of the key-value pairs
      
        for (let key in item) {
            let value = item[key];
            
            if (count === 0) {
                content += `<div><strong style="font-size: 25px">${value}</strong></div>`;
            } else if (count === 1) {
                content += `<div><span style="font-size: 14px">${value}</span></div>`;
            } else {
                content += `<div style="margin-bottom: 7px;">${key}: ${value}</div>`;
            }
            
            count++;
        }
        
        return content;
    }
});
