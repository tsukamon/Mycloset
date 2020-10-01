//非同期通信未完成

function submit() {
  const submit_btn = document.getElementById("categories-input");
  submit_btn.addEventListener("click", (e) => {
    const formData = new FormData(document.getElementById("form-category"));
    const XHR = new XMLHttpRequest();
    XHR.open("POST", "/categories", true);
    XHR.responseType = "json";
    XHR.send(formData);
    XHR.onload = () => {
      if (XHR.status != 200) {
        alert(`Error ${XHR.status}: ${XHR.statusText}`);
        return null;
      }
      const item = XHR.response.category;
      console.log("hellow");
     const list = document.getElementById("list-category");
     const formText = document.getElementById("name");
     const HTML = `
     <tr>
     <td><textarea class="small-tems-text" id="iteminfo" placeholder rows="1" maxlength="50" name="category[name]">${item.name}</textarea></td>
     <td></td>
     </form>
     <td><a class="category-destroy" rel="nofollow" data-method="delete" href="/categories/${item.id}">Destroy</a></td>
     </tr>`;
     list.insertAdjacentHTML("afterend", HTML);
     formText.value = "";
   };
   e.preventDefault();
  });
}
window.addEventListener("load",submit);

//非同期通信未完成