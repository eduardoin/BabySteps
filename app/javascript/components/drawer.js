const initDrawer = () => {
  const activateDrawer = () => {
    const drawer = document.querySelector('#drawer')
    drawer.classList.toggle('active')
  }

  const button = document.querySelector('#drawer-button')
  button.addEventListener('click', activateDrawer)
}

export { initDrawer };
