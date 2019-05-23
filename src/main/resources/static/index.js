$(document).ready(() => {
    $('#searchForm').on('submit', (e) => {
        let searchText = $('#searchText').val();
        getMovies(searchText);
        e.preventDefault();
    } );

});

function getMovies(searchText){
    axios.get('http://www.omdbapi.com/?s='+searchText+'&apikey=thewdb')
    .then((response) => {
        console.log(response);
        let movies = response.data.Search;
        let output = '';
        $.each(movies, (index, movie) => {
            output += `
            <div class="col-md-3">
<div class="well text-center">
<img src="${movie.Poster}">
<h5>${movie.Title}</h5>
<div>
    <form action="/film" method="post" id=${index}>
        <input type="hidden" value="${movie.Title}" name="text"/>
        <input type="hidden" value="таг" name="tag"/>
        <input type="hidden" value="${movie.Poster}" name="image"/>
        <button class="btn btn-outline-info" type="submit">Save message</button>
    </form>
</div>
</div>
            </div>
            `;
        });

        $('#movies').html(output);

    })
    .catch((err) => {
        console.log(err);
    });
}