var status_ele = document.getElementById('status')
status_ele.addEventListener('change', () => {
  window.location.href = status_ele.dataset.notesPath + "?status=" + status_ele.value
})