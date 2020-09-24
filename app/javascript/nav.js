window.addEventListener('load', function(){

const categoryPullDownButton = document.getElementById("category-lists")
const seasonPullDownButton = document.getElementById("season-lists")
const categoryPullDownParents = document.getElementById("category-pull-down")
const seasonPullDownParents = document.getElementById("season-pull-down")

  categoryPullDownButton.addEventListener('click', function() {
    if (categoryPullDownParents.getAttribute("style") == "display:block;") {
      // pullDownParentsにdisplay:block;が付与されている場合（つまり表示されている時）実行される
      categoryPullDownParents.removeAttribute("style", "display:block;")
    } else {
      // pullDownParentsにdisplay:block;が付与されていない場合（つまり非表示の時）実行される
      categoryPullDownParents.setAttribute("style", "display:block;")
    } 
  })
  seasonPullDownButton.addEventListener('click', function() {
    if (seasonPullDownParents.getAttribute("style") == "display:block;") {
      // pullDownParentsにdisplay:block;が付与されている場合（つまり表示されている時）実行される
      seasonPullDownParents.removeAttribute("style", "display:block;")
    } else {
      // pullDownParentsにdisplay:block;が付与されていない場合（つまり非表示の時）実行される
      seasonPullDownParents.setAttribute("style", "display:block;")
    } 
  })
})