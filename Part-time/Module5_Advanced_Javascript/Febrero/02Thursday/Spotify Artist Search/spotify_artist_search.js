$('document').ready(function() {

  $(".js-search").click(function() {
    event.preventDefault();
    searchArtist();
  });



  // $(".js-artist-name").click(function() {
  $(".js-artist-list").on("click", ".js-artist-name", function() {
    // event.preventDefault();
    var artistId = $(this).data("id");
    searchAlbums(artistId);
    // var artistId = $(this).data("id");
    // displayAlbums(artistId);
  });



  // $(".js-artist-list").on("click", ".js-artist-name .js-album-name", function() {
  $(document).on("click", ".js-album-name", function() {
    // event.preventDefault();

    var albumId = $(this).attr("data-id");
    // console.log();
    console.log(albumId);
    searchAlbumTrack(albumId);
    // var artistId = $(this).data("id");
    // displayAlbums(artistId);
  });





  function searchArtist() {
    var searchString = $("#artist").val();
    $("#artist").val(""); //blanquea campos de input
    $.ajax({
      type: "GET",
      url: `https://api.spotify.com/v1/search?type=artist&query=${searchString}`,
      success: function (response) {
        var newList = hasImage(response.artists.items);
        displayResults(newList);
      },
      error: function () {
        alert("Error");
      }
    });
  }



  function searchAlbums(artistId) {
    // var searchString = $("#artist").val();
    $.ajax({
      type: "GET",
      url: `https://api.spotify.com/v1/artists/${artistId}/albums`,
      success: displayAlbumsResults,
      error: function () {
        alert("Error");
      }
    });
  }



  function searchAlbumTrack(albumId) {
    $.ajax({
      type: "GET",
      url: `https://api.spotify.com/v1/albums/${albumId}/tracks`,
      success: displayAlbumTrackResults,
      error: function () {
        alert("Error");
      }
    });
  }



  function displayResults(artists) {
    $(".js-artist-list").empty();
    artists.forEach(function(artist) {
      var html = `
          <li>
            <h3 data-id="${artist.id}" class="js-artist-name artist-name"><a href="#">${artist.name}</a></h3>
            <img class="artist-img"src=${artist.images[2].url}>
          </li>
          <ul id="${artist.id}" class="js-album-list"></ul>
      `;
        $(".js-artist-list").append(html);
    })
  }

  // <li>
  //   <h3 data-id="${artist.id}" class="js-artist-name artist-name"><a href="#">${artist.name}</a></h3>
  //   <img class="artist-img"src=${artist.images[2].url}>
  // </li>



  function displayAlbumsResults(albums) {
    var artistId = "#" + albums.items[0].artists[0].id;
    // console.log(artistId);
    $(".js-album-list").empty();
    albums.items.forEach(function(album) {
      var artistSelector = "#" + artistId;
      var html = `
      <li class="js-album-name" data-id="${album.id}"><a href="#">${album.name}</a></li>
      <ul id="${album.id}" class="js-album-track-list"></ul>
      `;
      // $(".js-album-list").append(html);
      $(artistId).append(html);
    })
  }




  function displayAlbumTrackResults(tracks) {
    // debugger;

    // console.log(tracks);
    var albumId = "#" + tracks.items[0].artists[0].id;
    $(".js-album-track-list").empty();
    tracks.items.forEach(function(track) {
      var albumSelector = "#" + albumId;
      var html = `
      <li class="js-album-track-name data-id="${track.id}"><a href="#">${track.name}</a></li>
      `;
      // $(".js-album-list").append(html);
      $(albumId).append(html);
    })
  }




  // albums.forEach(function(album) {
  //   var html = `
  //       <li class="js-album-name data-id)"${album.id}" data-img="${album.images[1].url}"></li>
  //         <img src="${album.images[1].url}">
  //   `;
  //     $(".js-album-list").append(html);
  // })






  function hasImage(artists) {
    var artists_with_images = []
    artists.forEach(function(artist) {
      if(artist.images.length > 2) {
        artists_with_images.push(artist);
      }
    })
    return artists_with_images;
  }





});

// ------------------

// var nombresArtistas = $('li')
// if (nombresArtistas.data === "metallica"){
//   .append(loquesea)
// }
