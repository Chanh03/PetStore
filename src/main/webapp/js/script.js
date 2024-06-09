// SEARCH FUNCTION
document
	.getElementById("search-btn")
	.addEventListener("click", function(event) {
		event.stopPropagation(); // Ngăn chặn sự kiện click lan ra ngoài
		var searchContainer = document.querySelector(".search-container");
		searchContainer.classList.toggle("expand");
		var searchInput = document.getElementById("search-input");
		if (searchContainer.classList.contains("expand")) {
			searchInput.focus();
		}
	});

document.addEventListener("click", function(event) {
	var searchContainer = document.querySelector(".search-container");
	if (!searchContainer.contains(event.target)) {
		searchContainer.classList.remove("expand");
	}
});
//LOADING FUNCTION


//SIDEBAR FUNCTION
function showContent(sectionId) {
	var sections = document.getElementsByClassName("content-section");
	for (var i = 0; i < sections.length; i++) {
		sections[i].style.display = "none";
	}
	document.getElementById(sectionId).style.display = "block";
}

function toggleDetails(button) {
	const details = button.parentElement.parentElement.querySelector('.details');
	details.style.display = details.style.display === 'none' ? 'block' : 'none';
}
